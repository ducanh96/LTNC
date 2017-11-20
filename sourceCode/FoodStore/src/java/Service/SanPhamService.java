/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Domain.Sanpham;
import java.util.ArrayList;

/**
 *
 * @author Duc Anh
 */
public interface SanPhamService {
    ArrayList<Sanpham> getAllProductByMaSP(int MaLoapSP);
    ArrayList<Sanpham> getAllProduct();
    ArrayList<Sanpham> SearchAllProductByName(String name);
    ArrayList<Sanpham> SearchAllProductByPrice(Long from,Long to);
    Sanpham getProductDetail(String maSp);
    Boolean InsertProduct(Sanpham sp);
    
}
