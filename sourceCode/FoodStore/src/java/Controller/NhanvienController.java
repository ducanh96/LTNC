/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import Domain.Nhanvien;
import Service.NhanVienService;
import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author Admin
 */
@Controller
@RequestMapping(value = "/admin")

public class NhanvienController {

    @Autowired
    private NhanVienService nhanVienService;

    //lay ra danh sach nhan vien
    @RequestMapping(value = "/content-nhanvien", method = RequestMethod.GET)
    public String getAllNV(ModelMap mm) {
        ArrayList<Nhanvien> listNV = nhanVienService.getAllNV();
        System.out.println(listNV.get(0).getTenNv());
        mm.put("ListNhanVien", listNV);
        return "admin/content-nhanvien";
    }

    //lay ra nhan vien theo maNv
    @RequestMapping(value = "/listnhanvien")
    public String getAllNVById(ModelMap mm, @RequestParam int MaNv) {
        ArrayList<Nhanvien> listNVId = nhanVienService.getAllNVById(MaNv);
        mm.put("listNvId", listNVId);
        return "admin/content-nhanvien";
    }

    //thêm nhân viên, Lay tat ca nhan vien do vao nhanVien
    @RequestMapping(value = "/addNhanVien", method = RequestMethod.GET)
    public String InsertNV(ModelMap mm,@ModelAttribute(value = "nhanVien") Nhanvien nv) {
        System.out.println("Khong them dươc");
        mm.put("nhanVien", nhanVienService.getAllNV());
        return "admin/addNhanVien";
    }
    
    //sua thong tin nhan vien
    @RequestMapping(value = "/editNhanVien/{maNv}", method = RequestMethod.GET)
    public String EditNV(ModelMap mm, @PathVariable(value = "maNv") int MaNv) {
        System.out.println(nhanVienService.getNhanvienDetail(MaNv));
        mm.put("nhanVien", nhanVienService.findById(MaNv));
        mm.put("listDetail", (Nhanvien) nhanVienService.getNhanvienDetail(MaNv));
        return "admin/editNhanVien";
    }
    
    
    
    //xoa thong tin nhanvien
    @RequestMapping(value = "/deleteNhanVien", method = RequestMethod.GET)
    public String DeleteNV(ModelMap mm, @ModelAttribute(value = "nhanVien") Nhanvien nv) {
        nhanVienService.Delete(nv);
        mm.put("listNhanVien", nhanVienService.getAllNV());
        return "admin/content-nhanvien";
    }
    

    //luu du lieu nhanvien
//    @RequestMapping(value = "save", method = RequestMethod.POST)
//    public String SaveNV(ModelMap mm, @ModelAttribute(value = "nhanVien") Nhanvien nv) {
//        mm.put("listNhanVien", nhanVienService.getAllNV());
//        return "admin/content-nhanvien";
//    }

}
