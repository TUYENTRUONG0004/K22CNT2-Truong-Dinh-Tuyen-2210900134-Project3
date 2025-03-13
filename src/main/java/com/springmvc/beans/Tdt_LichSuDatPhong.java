package com.springmvc.beans;

import org.springframework.format.annotation.DateTimeFormat;
import java.time.LocalDateTime;

public class Tdt_LichSuDatPhong {

    private String tdt_MaDatPhong;
    private int tdt_MaNguoiDung;
    private String tdt_MaPhong;

    // Spring sẽ tự parse dữ liệu từ input datetime-local (ví dụ: "2023-09-16T14:30")
    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime tdt_ThoiGianBatDau;

    @DateTimeFormat(pattern = "yyyy-MM-dd'T'HH:mm")
    private LocalDateTime tdt_ThoiGianKetThuc;

    private String tdt_TrangThai;

    // Constructor mặc định
    public Tdt_LichSuDatPhong() {
    }

    // Constructor có tham số
    public Tdt_LichSuDatPhong(String tdt_MaDatPhong, int tdt_MaNguoiDung, String tdt_MaPhong,
                              LocalDateTime tdt_ThoiGianBatDau, LocalDateTime tdt_ThoiGianKetThuc, String tdt_TrangThai) {
        this.tdt_MaDatPhong = tdt_MaDatPhong;
        this.tdt_MaNguoiDung = tdt_MaNguoiDung;
        this.tdt_MaPhong = tdt_MaPhong;
        this.tdt_ThoiGianBatDau = tdt_ThoiGianBatDau;
        this.tdt_ThoiGianKetThuc = tdt_ThoiGianKetThuc;
        this.tdt_TrangThai = tdt_TrangThai;
    }

    // Getters & Setters
    public String getTdt_MaDatPhong() {
        return tdt_MaDatPhong;
    }

    public void setTdt_MaDatPhong(String tdt_MaDatPhong) {
        this.tdt_MaDatPhong = tdt_MaDatPhong;
    }

    public int getTdt_MaNguoiDung() {
        return tdt_MaNguoiDung;
    }

    public void setTdt_MaNguoiDung(int tdt_MaNguoiDung) {
        this.tdt_MaNguoiDung = tdt_MaNguoiDung;
    }

    public String getTdt_MaPhong() {
        return tdt_MaPhong;
    }

    public void setTdt_MaPhong(String tdt_MaPhong) {
        this.tdt_MaPhong = tdt_MaPhong;
    }

    public LocalDateTime getTdt_ThoiGianBatDau() {
        return tdt_ThoiGianBatDau;
    }

    public void setTdt_ThoiGianBatDau(LocalDateTime tdt_ThoiGianBatDau) {
        this.tdt_ThoiGianBatDau = tdt_ThoiGianBatDau;
    }

    public LocalDateTime getTdt_ThoiGianKetThuc() {
        return tdt_ThoiGianKetThuc;
    }

    public void setTdt_ThoiGianKetThuc(LocalDateTime tdt_ThoiGianKetThuc) {
        this.tdt_ThoiGianKetThuc = tdt_ThoiGianKetThuc;
    }

    public String getTdt_TrangThai() {
        return tdt_TrangThai;
    }

    public void setTdt_TrangThai(String tdt_TrangThai) {
        this.tdt_TrangThai = tdt_TrangThai;
    }
}
