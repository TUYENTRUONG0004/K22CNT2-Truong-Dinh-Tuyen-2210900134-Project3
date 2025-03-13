package com.springmvc.beans;

public class Tdt_PhongHoc {
    
    private String tdt_MaPhong;
    private String tdt_TenPhong;
    private String tdt_LoaiPhong;
    private int tdt_SoChoNgoi;
    private String tdt_TrangThai;
    private String tdt_GhiChu;

    // Constructor mặc định
    public Tdt_PhongHoc() { }

    // Constructor có tham số
    public Tdt_PhongHoc(String tdt_MaPhong, String tdt_TenPhong, String tdt_LoaiPhong, int tdt_SoChoNgoi, String tdt_TrangThai, String tdt_GhiChu) {
        this.tdt_MaPhong = tdt_MaPhong;
        this.tdt_TenPhong = tdt_TenPhong;
        this.tdt_LoaiPhong = tdt_LoaiPhong;
        this.tdt_SoChoNgoi = tdt_SoChoNgoi;
        this.tdt_TrangThai = tdt_TrangThai;
        this.tdt_GhiChu = tdt_GhiChu;
    }

    // Getters và Setters
    public String getTdt_MaPhong() {
        return tdt_MaPhong;
    }

    public void setTdt_MaPhong(String tdt_MaPhong) {
        this.tdt_MaPhong = tdt_MaPhong;
    }

    public String getTdt_TenPhong() {
        return tdt_TenPhong;
    }

    public void setTdt_TenPhong(String tdt_TenPhong) {
        this.tdt_TenPhong = tdt_TenPhong;
    }

    public String getTdt_LoaiPhong() {
        return tdt_LoaiPhong;
    }

    public void setTdt_LoaiPhong(String tdt_LoaiPhong) {
        this.tdt_LoaiPhong = tdt_LoaiPhong;
    }

    public int getTdt_SoChoNgoi() {
        return tdt_SoChoNgoi;
    }

    public void setTdt_SoChoNgoi(int tdt_SoChoNgoi) {
        this.tdt_SoChoNgoi = tdt_SoChoNgoi;
    }

    public String getTdt_TrangThai() {
        return tdt_TrangThai;
    }

    public void setTdt_TrangThai(String tdt_TrangThai) {
        this.tdt_TrangThai = tdt_TrangThai;
    }

    public String getTdt_GhiChu() {
        return tdt_GhiChu;
    }

    public void setTdt_GhiChu(String tdt_GhiChu) {
        this.tdt_GhiChu = tdt_GhiChu;
    }
}
