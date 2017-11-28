/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Domain.Nhanvien;
import java.util.ArrayList;

/**
 *
 * @author Admin
 */
public interface NhanVienService {
    ArrayList<Nhanvien> getAllNV();
    ArrayList<Nhanvien> getAllNVById(int MaNv);
    ArrayList<Nhanvien> SearchNVByName(String name);
    Nhanvien getNhanvienDetail(int MaNv);
    Nhanvien findById(int MaNv);
    boolean Insert(Nhanvien nv);
    boolean Edit(Nhanvien nv,int maNv);
    boolean Delete(Nhanvien nv);
    
}
