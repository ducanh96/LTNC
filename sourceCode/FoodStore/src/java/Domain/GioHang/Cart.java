/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain.GioHang;

import java.util.HashMap;
import java.util.Map;

/**
 *
 * @author Duc Anh
 */
public class Cart {

    private HashMap<String, Item> cartItems;

    public Cart() {
        cartItems = new HashMap<>();
    }

    
    public Cart(HashMap<String, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public HashMap<String, Item> getCartItems() {
        return cartItems;
    }

    public void setCartItems(HashMap<String, Item> cartItems) {
        this.cartItems = cartItems;
    }

    public  void UpdateQuantity(String key,int sl)
    {
         boolean bln = cartItems.containsKey(key);
         if(bln)
         {
             Item item = getItemFromKey(key);
             item.setQuantity(sl);
              cartItems.put(key, item);
         }
         
         
         
    }
    
    public void doCart(String key, Item item) {
        boolean bln = cartItems.containsKey(key);
        if (bln) {
            int quantity_old = item.getQuantity();
            item.setQuantity(quantity_old + 1);
            cartItems.put(item.getProduct().getMaSp(), item);
        } else {
            cartItems.put(item.getProduct().getMaSp(), item);
        }
    }

    public Item getItemFromKey(String key)
    {
        return cartItems.get(key);
    }
    
    public  boolean checkExistItem(String maSp)
    {
        return cartItems.containsKey(maSp);
    }
    
    public void removeToCart(String maSp) {
        boolean bln = cartItems.containsKey(maSp);
        if (bln) {
            cartItems.remove(maSp);
        }
    }

    public int countItem() {
        int count = 0;
        count = cartItems.size();
        return count;
    }

    public Long total() {
        Long count = 0l;
        for (Map.Entry<String, Item> list : cartItems.entrySet()) {
            count += list.getValue().getProduct().getGiaSp() * list.getValue().getQuantity();
        }
        return count;
    }

}
