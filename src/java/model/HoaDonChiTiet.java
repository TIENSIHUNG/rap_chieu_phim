package model;
// Generated Nov 9, 2018 10:03:06 PM by Hibernate Tools 4.3.1



/**
 * HoaDonChiTiet generated by hbm2java
 */
public class HoaDonChiTiet  implements java.io.Serializable {


     private int id;
     private DoAnChiTiet doAnChiTiet;
     private HoaDon hoaDon;
     private int soLuong;
     private int tongTien;

    public HoaDonChiTiet() {
    }

    public HoaDonChiTiet(int id, DoAnChiTiet doAnChiTiet, HoaDon hoaDon, int soLuong, int tongTien) {
       this.id = id;
       this.doAnChiTiet = doAnChiTiet;
       this.hoaDon = hoaDon;
       this.soLuong = soLuong;
       this.tongTien = tongTien;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public DoAnChiTiet getDoAnChiTiet() {
        return this.doAnChiTiet;
    }
    
    public void setDoAnChiTiet(DoAnChiTiet doAnChiTiet) {
        this.doAnChiTiet = doAnChiTiet;
    }
    public HoaDon getHoaDon() {
        return this.hoaDon;
    }
    
    public void setHoaDon(HoaDon hoaDon) {
        this.hoaDon = hoaDon;
    }
    public int getSoLuong() {
        return this.soLuong;
    }
    
    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }
    public int getTongTien() {
        return this.tongTien;
    }
    
    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }




}

