/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Service.LoaispServiceImp;
import Service.SanPhamService;
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
        mm.put("listProduct",sanPhamService.getAllProduct(MaLoaiSP));
        mm.put("loaisp", loaispService.getAllcategory());
        return "pages/menu";
    }
}
