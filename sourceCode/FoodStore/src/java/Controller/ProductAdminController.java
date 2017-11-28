/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Domain.Loaisp;
import Domain.Sanpham;
import Service.LoaispService;
import Service.SanPhamService;
import java.io.File;
import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.server.PathParam;
import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

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

    
     @RequestMapping("/index")
    public String Index(ModelMap mm) {
        mm.put("loaisp", loaispService.getAllcategory());
        return "admin/content-category";
    };
    
    
    
    
    @RequestMapping(value = "/products/{maSp}", method = RequestMethod.GET)
    public String UpdateProduct(ModelMap mm, @PathVariable(value = "maSp") String maSp) {
        System.out.println(sanPhamService.getProductDetail(maSp));
        mm.put("loaiSp", loaispService.getAllcategory());
        mm.put("sanPham", (Sanpham) sanPhamService.getProductDetail(maSp));
        return "admin/editProduct";
    }

    @RequestMapping(value = "/update", method = RequestMethod.POST)
    public String UpdateProduct(HttpServletRequest request, HttpServletResponse response,
            @RequestParam(value = "fileUpload", required = false) MultipartFile fileUpload, @ModelAttribute(value = "sanPham") Sanpham sanPham,
            @RequestParam(value = "maLoaiSp") String maLoaiSp , @RequestParam(value = "maSpp") String maSpp) {
        System.out.println(sanPham.getMaSp());
        System.out.println(maLoaiSp);
        System.out.println(sanPham.getTenSp());
        System.out.println(sanPham.getTrangThai());
        System.out.println(sanPham.getMotaSp());
        System.out.println(sanPham.getGiaSp());
        String path = request.getSession().getServletContext().getRealPath("/") + "resourcesAdmin/uploads/";
        Loaisp l = loaispService.getLoaiSP(Integer.parseInt(maLoaiSp));
        sanPham.setLoaisp(l);
        if (fileUpload != null) {
            try {
                System.out.println(fileUpload.toString().length());
                
                FileUtils.forceMkdir(new File(path));
                File upload = new File(path + fileUpload.getOriginalFilename());
                fileUpload.transferTo(upload);
             

                String src = "/resourcesAdmin/uploads/" + fileUpload.getOriginalFilename();
                sanPham.setAnhSp(src);

                sanPhamService.UpdateProduct(sanPham,maSpp);
                    
              

            } catch (IOException ex) {
                ex.printStackTrace();
            }
        } else {
            try {
                System.out.println("haha");
                sanPhamService.UpdateProduct(sanPham,maSpp);
                   
                
            } catch (Exception ex) {
                ex.printStackTrace();
            }
        }
        return "redirect:" + "index";
    }

    @RequestMapping("/index2")
    public String Index2() {
        return "admin/blank_jsp";
    }

    @RequestMapping(value = "uploadDemo", method = RequestMethod.GET)
    public String Upload() {
        return "admin/uploadDemo";
    }

    @RequestMapping(value = "addProduct", method = RequestMethod.GET)
    public String AddProduct(ModelMap mm) {
        System.out.println("haha");
        mm.put("loaiSp", loaispService.getAllcategory());
        return "admin/addProduct";
    }

    //them san pham
    @RequestMapping(value = "/addProduct", method = RequestMethod.POST)
    public String AddProduct(ModelMap mm, HttpServletRequest request, HttpServletResponse response,
            @RequestParam(value = "fileUpload", required = false) MultipartFile fileUpload, @ModelAttribute(value = "sanPham") Sanpham sanPham,
            @RequestParam(value = "maLoaiSp") String maLoaiSp) {
        System.out.println(sanPham.getMaSp());
        System.out.println(maLoaiSp);
        System.out.println(sanPham.getTenSp());
        System.out.println(sanPham.getTrangThai());
        System.out.println(sanPham.getMotaSp());
        System.out.println(sanPham.getGiaSp());
        String path = request.getSession().getServletContext().getRealPath("/") + "resourcesAdmin/uploads/";

        if (fileUpload != null) {
            try {
                FileUtils.forceMkdir(new File(path));
                File upload = new File(path + fileUpload.getOriginalFilename());
                fileUpload.transferTo(upload);
                mm.put("fileUpload", fileUpload.getOriginalFilename());

                String src = "/resourcesAdmin/uploads/" + fileUpload.getOriginalFilename();
                sanPham.setAnhSp(src);
                Loaisp l = loaispService.getLoaiSP(Integer.parseInt(maLoaiSp));
                sanPham.setLoaisp(l);
                if (sanPhamService.InsertProduct(sanPham)) {
                    return "admin/sucess";
                }

            } catch (IOException ex) {
                ex.printStackTrace();
            }
        }
        return "admin/blank_jsp";
    }

}
