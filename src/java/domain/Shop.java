package domain;

import dao.Dao;
import java.util.ArrayList;
import java.sql.*;

public class Shop {
    
    
    public static Goods getGoodsById(int id, String lang){
        return Dao.getGoodsById(id, lang);
    }
    
    public static ArrayList<Goods> getGoodsFromCategories(String lang, String... categories){
        ArrayList<Goods> fullList = new ArrayList<Goods>();
        for(int i = 0; i < categories.length; i++){
            fullList.addAll(Dao.getGoodsByCategory(categories[i], lang));
        }
        
        return fullList;
    }
    
    public static ArrayList<Goods> getAllGoodsList(String lang){
        
        return Dao.getGoodsList(lang);
    }
    
}
