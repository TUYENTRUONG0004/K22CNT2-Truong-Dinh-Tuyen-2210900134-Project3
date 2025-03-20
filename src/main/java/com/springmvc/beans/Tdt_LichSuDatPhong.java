package com.springmvc.beans;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Bean đại diện cho bảng tdt_LichSuDatPhong.
 * Các trường thời gian được định dạng theo "yyyy-MM-dd",
 * phù hợp với <input type="date"> của HTML.
 */
public class Tdt_LichSuDatPhong {

    private String tdt_MaDatPhong;      // Mã đặt phòng (Primary Key)
    private int tdt_MaNguoiDung;         // Mã người dùng đặt phòng
    private String tdt_MaPhong;          // Mã phòng

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tdt_ThoiGianBatDau;     // Ngày bắt đầu

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tdt_ThoiGianKetThuc;    // Ngày kết thúc

    private String tdt_TrangThai;        // Trạng thái (ví dụ: "Đang chờ", "Đã xác nhận")

    // Constructor mặc định
    public Tdt_LichSuDatPhong() {
    }

    // Constructor có tham số
    public Tdt_LichSuDatPhong(String tdt_MaDatPhong, int tdt_MaNguoiDung, String tdt_MaPhong,
                              Date tdt_ThoiGianBatDau, Date tdt_ThoiGianKetThuc, String tdt_TrangThai) {
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

    public Date getTdt_ThoiGianBatDau() {
        return tdt_ThoiGianBatDau;
    }

    public void setTdt_ThoiGianBatDau(Date tdt_ThoiGianBatDau) {
        this.tdt_ThoiGianBatDau = tdt_ThoiGianBatDau;
    }

    public Date getTdt_ThoiGianKetThuc() {
        return tdt_ThoiGianKetThuc;
    }

    public void setTdt_ThoiGianKetThuc(Date tdt_ThoiGianKetThuc) {
        this.tdt_ThoiGianKetThuc = tdt_ThoiGianKetThuc;
    }

    public String getTdt_TrangThai() {
        return tdt_TrangThai;
    }

    public void setTdt_TrangThai(String tdt_TrangThai) {
        this.tdt_TrangThai = tdt_TrangThai;
    }
}
