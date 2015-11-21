package domain;

import java.util.Date;

public class Order {
    
    private Cart cart;
    private String userName;
    private boolean delivery;
    private String address;
    private Date date;
    
    private Order(){
    }

    public Order(Cart cart, String userName, boolean delivery, String address) {
        this.cart = cart;
        this.userName = userName;
        this.delivery = delivery;
        this.address = address;
        date = new Date();
    }

    public Cart getCart() {
        return cart;
    }
      
}
