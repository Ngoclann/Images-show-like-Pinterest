/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import db.DBContext;
import entity.Article;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Ngọc Lan
 */
public class ArticleRepository {
    private DBContext db;
    
    public ArticleRepository() throws Exception {
        this.db = DBContext.getInstance();
    }
    public ArrayList<Article> getArticles(int start, int limit) throws SQLException {
        ArrayList<Article> articles = new ArrayList<>();
        
        String sql = "SELECT id, image, description FROM ( \n" +
"  SELECT *, ROW_NUMBER() OVER (ORDER by id ) as row FROM Article \n" +
" ) a WHERE row > ? and row <= ?";
        
        int end = start + limit;
        
        try {
            PreparedStatement statement = this.db.getConnection().prepareCall(sql);
            
            statement.setInt(1, start);
            statement.setInt(2, end);
            
            ResultSet rs = statement.executeQuery();
            
            while (rs.next()) {
                int id = rs.getInt(1);
                String image = rs.getString(2);
                String description = rs.getString(3);
                
                articles.add(new Article(id, image, description));
            }
        } catch (SQLException ex) {
            throw ex;
        }
        
        return articles;
    }
}
