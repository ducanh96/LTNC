package Domain;
// Generated Nov 11, 2017 4:10:56 PM by Hibernate Tools 4.3.1



/**
 * Hoadon generated by hbm2java
 */
public class Hoadon  implements java.io.Serializable {


     private Integer maHd;
     private Donhang donhang;
     private Boolean trangThai;
     private Long phiShip;

    public Hoadon() {
    }

	
    public Hoadon(Donhang donhang) {
        this.donhang = donhang;
    }
    public Hoadon(Donhang donhang, Boolean trangThai, Long phiShip) {
       this.donhang = donhang;
       this.trangThai = trangThai;
       this.phiShip = phiShip;
    }
   
    public Integer getMaHd() {
        return this.maHd;
    }
    
    public void setMaHd(Integer maHd) {
        this.maHd = maHd;
    }
    public Donhang getDonhang() {
        return this.donhang;
    }
    
    public void setDonhang(Donhang donhang) {
        this.donhang = donhang;
    }
    public Boolean getTrangThai() {
        return this.trangThai;
    }
    
    public void setTrangThai(Boolean trangThai) {
        this.trangThai = trangThai;
    }
    public Long getPhiShip() {
        return this.phiShip;
    }
    
    public void setPhiShip(Long phiShip) {
        this.phiShip = phiShip;
    }




}


