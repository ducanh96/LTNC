package Domain;
// Generated Nov 9, 2017 7:29:06 PM by Hibernate Tools 4.3.1



/**
 * Chitietdonhang generated by hbm2java
 */
public class Chitietdonhang  implements java.io.Serializable {


     private Integer id;
     private Donhang donhang;
     private Sanpham sanpham;
     private Integer soLuong;
     private Long donGia;
     private Long thanhTien;
     private Long tongTien;

    public Chitietdonhang() {
    }

	
    public Chitietdonhang(Donhang donhang, Sanpham sanpham) {
        this.donhang = donhang;
        this.sanpham = sanpham;
    }
    public Chitietdonhang(Donhang donhang, Sanpham sanpham, Integer soLuong, Long donGia, Long thanhTien, Long tongTien) {
       this.donhang = donhang;
       this.sanpham = sanpham;
       this.soLuong = soLuong;
       this.donGia = donGia;
       this.thanhTien = thanhTien;
       this.tongTien = tongTien;
    }
   
    public Integer getId() {
        return this.id;
    }
    
    public void setId(Integer id) {
        this.id = id;
    }
    public Donhang getDonhang() {
        return this.donhang;
    }
    
    public void setDonhang(Donhang donhang) {
        this.donhang = donhang;
    }
    public Sanpham getSanpham() {
        return this.sanpham;
    }
    
    public void setSanpham(Sanpham sanpham) {
        this.sanpham = sanpham;
    }
    public Integer getSoLuong() {
        return this.soLuong;
    }
    
    public void setSoLuong(Integer soLuong) {
        this.soLuong = soLuong;
    }
    public Long getDonGia() {
        return this.donGia;
    }
    
    public void setDonGia(Long donGia) {
        this.donGia = donGia;
    }
    public Long getThanhTien() {
        return this.thanhTien;
    }
    
    public void setThanhTien(Long thanhTien) {
        this.thanhTien = thanhTien;
    }
    public Long getTongTien() {
        return this.tongTien;
    }
    
    public void setTongTien(Long tongTien) {
        this.tongTien = tongTien;
    }




}


