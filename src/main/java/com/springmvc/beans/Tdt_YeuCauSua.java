package com.springmvc.beans;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

public class Tdt_YeuCauSua {

    private String tdt_MaYeuCau;
    private String tdt_MoTa;
    private String tdt_MaThietBi;
    private String tdt_MaPhong;
    private Integer tdt_MaNguoiDung;  // Sửa từ int -> Integer
    private String tdt_TrangThai;
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tdt_NgayGui;         // Sử dụng java.util.Date
    
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tdt_NgayXuLy;        // Sử dụng java.util.Date

    // Constructor mặc định
    public Tdt_YeuCauSua() { }

    // Constructor có tham số
    public Tdt_YeuCauSua(String tdt_MaYeuCau, String tdt_MoTa, String tdt_MaThietBi, String tdt_MaPhong, 
                         Integer tdt_MaNguoiDung, String tdt_TrangThai, Date tdt_NgayGui, Date tdt_NgayXuLy) {
        this.tdt_MaYeuCau = tdt_MaYeuCau;
        this.tdt_MoTa = tdt_MoTa;
        this.tdt_MaThietBi = tdt_MaThietBi;
        this.tdt_MaPhong = tdt_MaPhong;
        this.tdt_MaNguoiDung = tdt_MaNguoiDung;
        this.tdt_TrangThai = tdt_TrangThai;
        this.tdt_NgayGui = tdt_NgayGui;
        this.tdt_NgayXuLy = tdt_NgayXuLy;
    }

    // Getters và Setters
    public String getTdt_MaYeuCau() {
        return tdt_MaYeuCau;
    }

    public void setTdt_MaYeuCau(String tdt_MaYeuCau) {
        this.tdt_MaYeuCau = tdt_MaYeuCau;
    }

    public String getTdt_MoTa() {
        return tdt_MoTa;
    }

    public void setTdt_MoTa(String tdt_MoTa) {
        this.tdt_MoTa = tdt_MoTa;
    }

    public String getTdt_MaThietBi() {
        return tdt_MaThietBi;
    }

    public void setTdt_MaThietBi(String tdt_MaThietBi) {
        this.tdt_MaThietBi = tdt_MaThietBi;
    }

    public String getTdt_MaPhong() {
        return tdt_MaPhong;
    }

    public void setTdt_MaPhong(String tdt_MaPhong) {
        this.tdt_MaPhong = tdt_MaPhong;
    }

    public Integer getTdt_MaNguoiDung() {
        return tdt_MaNguoiDung;
    }

    public void setTdt_MaNguoiDung(Integer tdt_MaNguoiDung) {
        this.tdt_MaNguoiDung = tdt_MaNguoiDung;
    }

    public String getTdt_TrangThai() {
        return tdt_TrangThai;
    }

    public void setTdt_TrangThai(String tdt_TrangThai) {
        this.tdt_TrangThai = tdt_TrangThai;
    }

    public Date getTdt_NgayGui() {
        return tdt_NgayGui;
    }

    public void setTdt_NgayGui(Date tdt_NgayGui) {
        this.tdt_NgayGui = tdt_NgayGui;
    }

    public Date getTdt_NgayXuLy() {
        return tdt_NgayXuLy;
    }

    public void setTdt_NgayXuLy(Date tdt_NgayXuLy) {
        this.tdt_NgayXuLy = tdt_NgayXuLy;
    }
}
