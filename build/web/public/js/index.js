let isScrollable = true;

window.addEventListener('scroll', function (e) {
    const scrollable = document.documentElement.scrollHeight - window.innerHeight;
    const scrolled = window.scrollY;

    if (Math.round(scrolled) >= scrollable && isScrollable) {
        fetchMoreArticles();
        window.scrollBy(0, -50);   
    }
});

window.addEventListener('load', function () {
    resizeAllMansoryItems();
});

function resizeMasonryItem(item) {
    const container = document.querySelector("#container"),
            rowGap = parseInt(window.getComputedStyle(container).getPropertyValue("grid-row-gap")),
            rowHeight = parseInt(window.getComputedStyle(container).getPropertyValue("grid-auto-rows"));

    const rowSpan = Math.floor((item.querySelector('.content').getBoundingClientRect().height + rowGap) / (rowHeight + rowGap));

    item.style.gridRowEnd = `span ${rowSpan}`;
}



function resizeAllMansoryItems() {
    document.querySelectorAll('.article').forEach(ele => {
        resizeMasonryItem(ele);
    });
}

function waitForImages() {
    document.querySelectorAll('.article').forEach(ele => {
        ele.querySelector('.content img').addEventListener('load', function (e) {
            resizeMasonryItem(ele);
        })
    });
}

async function fetchMoreArticles() {
    const lastIndex = document.querySelector("#container .article:last-child").className.split(' ')[1].split('-')[1];

    document.querySelector('.loader').classList.add('active');

    isScrollable = false;

    await fetch(`http://localhost:8080/Pinterest/api?index=${lastIndex}`)
            .then(response => response.json())
            .then(data => {
                data.forEach(article => {
                    container.innerHTML += `
                        <div class="article num-${article.id}">
                                        <div class="content">
                                            <img src="/Pinterest/public/image/${article.image}" />
                                            <p>This'is a picture</p>
                                        </div>
                            </div>
                    `
                });      
            });

    document.querySelector('.loader').classList.remove('active');        

    await waitForImages();
    
    isScrollable = true;
}
