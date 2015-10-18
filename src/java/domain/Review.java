package domain;
import java.util.Random;


public class Review {
    private String author;
    private String review;
    
    public Review(){
    String[] names = {"Sam", "James", "Nick"};
    String[] reviews = {"Good", "Very good", "Cool", "Super cool"};
     
    Random rand = new Random();
    author = names[ rand.nextInt(names.length )] ;
    review = reviews[ rand.nextInt(reviews.length )] ;
    
    }
}
