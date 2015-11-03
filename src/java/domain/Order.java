package domain;

import java.util.ArrayList;

public class Order {
    private  ArrayList<OrderItem> orderItemList;
    
    public  ArrayList<OrderItem> getItemList(){
        return orderItemList;
    }
    
    public Order(){
        orderItemList = new ArrayList<OrderItem>();
    }
    public Order(int id){
        this();
        this.addItem(id);
    }
    
    public int getTotalPrice(){
        int total = 0;
        for(OrderItem item :orderItemList){
            total += item.getTotalPrice();
        }
        return total;
    }
    
    public void addItem(int id){
        
        for(OrderItem item :orderItemList){
            if(item.checkId(id)){
                item.incAmount();
                return;
            }
        }
        orderItemList.add(new OrderItem(id));
    }
    
    public void remoreItem(int id){   
        for(OrderItem item :orderItemList){
            if(item.checkId(id)){
                if(item.getAmount() == 1){
                    orderItemList.remove(item);
                } else{
                    item.decAmount();
                } 
            }
        }
        orderItemList.add(new OrderItem(id));
    }
    
    public void setLang(String lang){
        for(OrderItem item :orderItemList){
            item.setLang(lang);
        }
    }
    
    public boolean isEmpty(){
        return orderItemList.isEmpty();
    }
           
}
