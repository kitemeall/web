package dao;

import domain.Goods;
import domain.Property;
import domain.Review;

import java.util.ArrayList;

public class Dao {
    
    private Dao(){
    }
    
    public static final String lang_ru = "ru";
    public static final String lang_en = "en";
    public static final String lang_ua = "ua";
    
    public static final String categ_tourist = "tourist";
    public static final String categ_auto = "auto";
    public static final String categ_water = "water";
    
    public static Goods getGoodsById(int id, String lang){
               return new Goods(id, "Garmin gps 12", 200,
                "Very good Gps!", "img/garmin12.jpg", 
               getPropertiesById(id, lang), 
               getReviewsById(id), 
               getPhotosById(id));
    }
    
    public static ArrayList<Goods> getGoodsByCategory(String category, String lang){
        ArrayList<Goods> goods = new ArrayList<Goods>();
        for(int i = 1; i <= 4; i++){
            goods.add(new Goods(i * 73,"Garmin gps 12", i * 100,
                    "Very good Gps!", "img/garmin12.jpg"));
        }
        return goods;
    }
    public static ArrayList<Goods> getGoodsList( String lang){
        ArrayList<Goods> goods = new ArrayList<Goods>();
        for(int i = 1; i <= 4; i++){
            goods.add(new Goods(i * 73,"Garmin gps 12", i * 100,
                    "Very good Gps!", "img/garmin12.jpg"));
        }
        return goods;
    }
    
    private static ArrayList<Property> getPropertiesById(int id, String lang){
        
        ArrayList<Property> properties = new ArrayList<Property>();
        
        String[] types = {"type1", "type2", "type3", "type4"};
        String[] values = {"value1", "value2", "value3", "value4"};
        
        for(int i = 0; i < types.length; i++){
            properties.add(new Property(types[i], values[i]));
        }
        return properties;
        
    }
    
    private static ArrayList<Review> getReviewsById(int id){
        
        ArrayList<Review> reviews = new ArrayList<Review>();
        
        String[] names = {"sam", "serios sam", "very serios sam", "James"};
        String[] texts = {"Serios", "very Serios", "rather Serios", "not bad"};
        
        for(int i = 0; i < names.length; i++){
            reviews.add(new Review(names[i], texts[i]));
        }
        return reviews;
        
    }
    
    private static ArrayList<String> getPhotosById(int id){
        return null;
    }
}
