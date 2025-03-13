package com.springmvc.beans;


public class Tdt_NguoiDung {
    private int tdt_MaNguoiDung;
    private String tdt_HoTen;
    private String tdt_VaiTro;
    private String tdt_Email;
    private String tdt_MatKhau;

    // Constructor không đối số
    public Tdt_NguoiDung() { }

    // Constructor có đối số
    public Tdt_NguoiDung(int tdt_MaNguoiDung, String tdt_HoTen, String tdt_VaiTro, String tdt_Email, String tdt_MatKhau) {
        this.tdt_MaNguoiDung = tdt_MaNguoiDung;
        this.tdt_HoTen = tdt_HoTen;
        this.tdt_VaiTro = tdt_VaiTro;
        this.tdt_Email = tdt_Email;
        this.tdt_MatKhau = tdt_MatKhau;
    }

    // Getter và Setter
    public int getTdt_MaNguoiDung() {
        return tdt_MaNguoiDung;
    }

    public void setTdt_MaNguoiDung(int tdt_MaNguoiDung) {
        this.tdt_MaNguoiDung = tdt_MaNguoiDung;
    }

    public String getTdt_HoTen() {
        return tdt_HoTen;
    }

    public void setTdt_HoTen(String tdt_HoTen) {
        this.tdt_HoTen = tdt_HoTen;
    }

    public String getTdt_VaiTro() {
        return tdt_VaiTro;
    }

    public void setTdt_VaiTro(String tdt_VaiTro) {
        this.tdt_VaiTro = tdt_VaiTro;
    }

    public String getTdt_Email() {
        return tdt_Email;
    }

    public void setTdt_Email(String tdt_Email) {
        this.tdt_Email = tdt_Email;
    }

    public String getTdt_MatKhau() {
        return tdt_MatKhau;
    }

    public void setTdt_MatKhau(String tdt_MatKhau) {
        this.tdt_MatKhau = tdt_MatKhau;
    }
}
