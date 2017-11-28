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
        mm.put("loaisp", loaispService.getAllcategory());
        return "admin/content-category";
    };
    
    @RequestMapping(value = "/productslist/{id}",method = RequestMethod.GET)
    public String getProductsByCategory(ModelMap mm,@PathVariable(value = "id")int id)
    {
        
        mm.put("products",sanPhamService.getAllProductByMaSP(id));
        return "admin/category_product_detail";
    }
    
    
}
