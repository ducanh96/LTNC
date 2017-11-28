/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Domain.GioHang;

import Domain.Sanpham;

/**
 *
 * @author Duc Anh
 */
public class Item {
    private Sanpham sanPham;
    private int quantity;
  
    
    public Item(Sanpham sp,int sl)
    {
        sanPham  = sp;
        quantity = sl;
    }
    public Item(){
        
    }
    
    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int i) {
        quantity  = i;
    }

    public Sanpham getProduct() {
        return sanPham;
    }
}
