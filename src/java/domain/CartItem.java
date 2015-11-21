package domain;

import dao.Dao;


public class CartItem  {
    
    public CartItem(int id){
        goodsId = id;
        amount = 1;
    }
    
    
    private Goods goods;
    private int amount;
    private int goodsId;
    public boolean checkId(int id){
        return (id == goodsId);
    }
    public void incAmount(){
        amount ++;
    }
    public void decAmount(){
        amount --;
    }
    public int getAmount(){
        return amount;
    }
    public void setLang(String lang){
        goods = Dao.getGoodsListItemById(goodsId, lang);
    }
    public String getName(){
        return goods.getName();
    }
    public String getDescription(){
        return goods.getInformation();
    }
    public String getPicture(){
        return goods.getMainPhoto();
    }
    public int getPrice(){
        return goods.getPrice();
    }
    public int getTotalPrice(){
        return (goods.getPrice() * amount);
    }
    
    public int getId(){
        return goodsId;
    }
    
}
