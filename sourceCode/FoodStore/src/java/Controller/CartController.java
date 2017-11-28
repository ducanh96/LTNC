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
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;





/**
 *
 * @author Duc Anh
 */
@Controller
@RequestMapping(value = "/home")
public class CartController {

    @Autowired
    private SanPhamService sanPhamService;
    @Autowired
    private LoaispServiceImp loaispService;

    @RequestMapping(value = "/mycart", method = RequestMethod.GET)
    public String getCart(HttpSession session) {
        Cart cart = (Cart) session.getAttribute(constant.GIO_HANG);
        if (cart == null) {
            cart = new Cart();

        }
        session.setAttribute(constant.GIO_HANG, cart);
        session.setAttribute(constant.TONG_TIEN, cart.total());
        return "pages/cart";
    }
//
//    - @ModelAttribute
//    : Thong tin Cart duoc chon tren form.jsp
//    - HttpSession
//    : session cua User
//
//    */

//    @RequestMapping(value = "/addCart", method = RequestMethod.POST)
//    public int addCart(@ModelAttribute("item")Item item, HttpSession session) {
//       
//        System.out.println(item.getProduct().getMaSp());
//        //Lay danh sach san pham cua User co trong session
//        Cart cart = (Cart)session.getAttribute(constant.GIO_HANG);
//        if(cart == null)
//        {
//            cart = new Cart();
//        }
//        cart.doCart(item.getProduct().getMaSp(), item);
//       
//        
//        //Luu danh sach san pham va tong tien cua khach hang vao session
//        session.setAttribute(constant.GIO_HANG, cart);
//        session.setAttribute(constant.TONG_TIEN, cart.total());
//        return 1;
//    }
    
   
 
    
    
    @RequestMapping(value = "/addCart", method = RequestMethod.GET)
    public String addCart(@RequestParam String maSp, HttpSession session) {

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

        // cart.doCart(item.getProduct().getMaSp(), item);
        //Luu danh sach san pham va tong tien cua khach hang vao session
        session.setAttribute(constant.GIO_HANG, cart);
        System.out.println(((Cart) session.getAttribute(constant.GIO_HANG)).getCartItems().size());
        session.setAttribute(constant.TONG_TIEN, cart.total());

        return "redirect:" + "mycart";
    }

    @RequestMapping(value = "/removeCart", method = RequestMethod.GET)
    public String removeCart(@RequestParam String maSp, HttpSession session) {

        System.out.println(maSp);

        Cart cart = (Cart) session.getAttribute(constant.GIO_HANG);
        if (cart == null) {
            cart = new Cart();

        }
        if (cart.checkExistItem(maSp)) {
            cart.removeToCart(maSp);
        }

        // cart.doCart(item.getProduct().getMaSp(), item);
        //Luu danh sach san pham va tong tien cua khach hang vao session
        session.setAttribute(constant.GIO_HANG, cart);
        System.out.println(((Cart) session.getAttribute(constant.GIO_HANG)).getCartItems().size());
        session.setAttribute(constant.TONG_TIEN, cart.total());
        return "redirect:" + "mycart";
    }

    @RequestMapping(value = "/updateCart", method = RequestMethod.POST)
    public String updateCart(@RequestParam String maSp, @RequestParam int soLuong, HttpSession session) {
        Cart cart = (Cart) session.getAttribute(constant.GIO_HANG);
        if (cart == null) {
            cart = new Cart();

        }
        System.out.println("test Update");
        System.out.println(maSp);
        System.out.println(soLuong);
        cart.UpdateQuantity(maSp, soLuong);
        session.setAttribute(constant.GIO_HANG, cart);
        session.setAttribute(constant.TONG_TIEN, cart.total());
        return "redirect:" + "mycart";
    }
}
