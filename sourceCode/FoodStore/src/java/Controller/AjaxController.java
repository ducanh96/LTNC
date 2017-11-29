/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Domain.GioHang.Cart;
import Domain.GioHang.Item;
import Domain.GioHang.constant;
import Domain.Sanpham;
import Service.LoaispServiceImp;
import Service.SanPhamService;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import jdk.nashorn.internal.runtime.Debug;
import org.codehaus.jackson.JsonProcessingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author Duc Anh
 */

@RequestMapping(value = "/home")
@Controller
public class AjaxController {

    @Autowired
    private SanPhamService sanPhamService;
    @Autowired
    private LoaispServiceImp loaispService;

    @RequestMapping(value = "/themGioHang", method = RequestMethod.GET) 
    public @ResponseBody String addNew(HttpServletRequest request, HttpSession session) {
       String maSp = request.getParameter("maSp");
        System.out.println(maSp);
        Sanpham sp = sanPhamService.getProductDetail(maSp);
        //Lay danh sach san pham cua User co trong session
        Cart cart = (Cart) session.getAttribute(constant.GIO_HANG);
        if (cart == null) {
            cart = new Cart();

        }
        if (cart.checkExistItem(maSp)) {
            Item item = cart.getItemFromKey(maSp);
            cart.doCart(maSp, item);
        } else {

            Item item = new Item(sp, 1);
            cart.doCart(maSp, item);
        }
        ObjectMapper mapper = new ObjectMapper();
        String ajaxResponse = "";
        try {
            ajaxResponse = mapper.writeValueAsString("1");
        } catch (JsonProcessingException e) {
          
            e.printStackTrace();
        } catch (IOException ex) {
            Logger.getLogger(AjaxController.class.getName()).log(Level.SEVERE, null, ex);
        }

        return ajaxResponse;
    
    }
    

    
}
