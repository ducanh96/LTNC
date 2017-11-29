/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Domain.Loaisp;
import Domain.Sanpham;
import Service.LoaispServiceImp;
import Service.SanPhamService;
import java.util.ArrayList;
import java.util.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Duc Anh
 */
@Controller
@RequestMapping("/admin")
public class CategoryAdminController {

    @Autowired
    private LoaispServiceImp loaispService;

    @Autowired
    private SanPhamService sanPhamService;
    
    @RequestMapping("/categories")
    public String Index(ModelMap mm) {
        ArrayList<Loaisp> arrLsp = loaispService.getAllcategory();
        
        for(Loaisp item : arrLsp)
        {
             ArrayList<Sanpham> arrSp = sanPhamService.getAllProductByMaSP(item.getId());
             item.setSanphams((Set)arrSp);
        }
       
        mm.put("loaisp", arrLsp);
        return "admin/content-category";
    };
    
    @RequestMapping(value = "/productslist/{id}",method = RequestMethod.GET)
    public String getProductsByCategory(ModelMap mm,@PathVariable(value = "id")int id)
    {
        
        mm.put("products",sanPhamService.getAllProductByMaSP(id));
        return "admin/category_product_detail";
    }
    
    
}
