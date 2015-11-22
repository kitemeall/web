package domain;

import javax.validation.constraints.NotNull;
import dao.Dao;
import dao.DaoHibernate;
import java.util.ArrayList;

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
    
    public static void makeOrder(@NotNull String name, @NotNull Cart cart, 
            boolean delivery, @NotNull String address){
        DaoHibernate.saveOrder(new Order(cart, name, delivery, address));
        
        
    }
    
    public static java.util.ArrayList<Order> getUserOrdersList(@NotNull String userName){
        
        return  DaoHibernate.getOrderListByUser(userName);
        
    }
    
    
}
