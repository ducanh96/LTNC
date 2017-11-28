/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;

import Dao.NhanVienDao;
import Domain.Nhanvien;
import Domain.Sanpham;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;

/**
 *
 * @author Admin
 */
public class NhanVienServiceImp implements NhanVienService {
    @Autowired
    private NhanVienDao nhanVienDao;
    
    @Override
    public ArrayList<Nhanvien> getAllNVById(int MaNv) {
        return nhanVienDao.getAllNVById(MaNv);
    }

    @Override
    public ArrayList<Nhanvien> getAllNV() {
        return nhanVienDao.getAllNV();
    }
    
    @Override
    public ArrayList<Nhanvien> SearchNVByName(String name) {
        return nhanVienDao.SearchNVByName(name);
    }
    
    @Override
    public Nhanvien getNhanvienDetail(int MaNv) {
        return nhanVienDao.getNhanvienDetail(MaNv);
    }
     @Override
    public Nhanvien findById(int MaNv) {
        return nhanVienDao.findById(MaNv);
    }
    
    @Override
    public boolean Insert(Nhanvien nv) {
        return nhanVienDao.Insert(nv);
    }
 
    @Override
    public boolean Edit(Nhanvien nv,int maNv) {
        return nhanVienDao.Edit(nv,maNv);
    }
 
    @Override
    public boolean Delete(Nhanvien nv) {
        return nhanVienDao.Delete(nv);
    }
 
   
    
    
    
}
