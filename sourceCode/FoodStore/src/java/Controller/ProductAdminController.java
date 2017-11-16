/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Service.LoaispService;
import Service.SanPhamService;
import javax.websocket.server.PathParam;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author Duc Anh
 */
@Controller
@RequestMapping("/admin")
public class ProductAdminController {

    @Autowired
    private LoaispService loaispService;

    @Autowired
    private SanPhamService sanPhamService;

    @RequestMapping(value = "/products/{maSp}", method = RequestMethod.GET)
    public String Getproduct(ModelMap mm, @PathParam(value = "maSp") String maSp) {
        mm.put("sanPham", sanPhamService.getProductDetail(maSp));
        return "admin/editproduct";
    }

    @RequestMapping("/index2")
    public String Index2()
    {
        return "admin/blank_jsp";
    }
    
}
