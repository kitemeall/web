package domain;

import java.util.ArrayList;

public class Goods {
    private String name;
    private int price;
    private String information;
    private String mainPhoto;
    private ArrayList <Property> properties;
    private ArrayList <Review> reviews;
    private ArrayList <String> photos;
    
    public Goods(String name, int price, String info, String photo){
        this.name = name;
        this.price = price;
        this.information = info;
        this.mainPhoto = photo;
        
        this.photos = null;
        this.reviews = null;
        this.properties = null;
    }
    
    public Goods(String name, int price, String info, String photo, 
            ArrayList<Property> properties, ArrayList<Review> reviews,
            ArrayList<String> photos){
        
        this(name, price, info, photo);
        
        this.photos = photos;
        this.reviews = reviews;
        this.properties = properties;
    }
}
