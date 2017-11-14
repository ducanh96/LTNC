/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Domain.Sanpham;
import Service.LoaispServiceImp;
import Service.SanPhamService;
import java.util.ArrayList;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Duc Anh
 */
@Controller
@RequestMapping(value="/product")
public class ProductController {
    
    @Autowired
    private SanPhamService sanPhamService;
    @Autowired
    private LoaispServiceImp loaispService;
    
    @RequestMapping(value = "/list")
    public String getListProductByMaSP(ModelMap mm, @RequestParam int MaLoaiSP){
        
        //lay ra san pham theo ma san pham
       ArrayList<Sanpham> listSp = sanPhamService.getAllProductByMaSP(MaLoaiSP);
       //truyen tat ca cac loai san pham vao view
       mm.put("listProduct",listSp);
       //truyen tat ca cac san pham vao view
       mm.put("loaisp", loaispService.getAllcategory());
       //dem kich thuoc cua collection de chia moi cot chi co 3 san pham
        int count = listSp.size();
        if(count %3 == 0)
        {
            mm.put("count", count/3);
        }
        else{
            mm.put("count",(int)count/3 +1);
        }
        return "pages/menu";
    }
}
