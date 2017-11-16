/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Domain.Loaisp;
import java.util.ArrayList;

/**
 *
 * @author Duc Anh
 */
public interface LoaispService {
    ArrayList<Loaisp> getAllcategory();
     public Loaisp getLoaiSP(int id);
}
