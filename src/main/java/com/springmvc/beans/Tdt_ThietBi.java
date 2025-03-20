package com.springmvc.beans;

import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * Bean đại diện cho bảng tdt_ThietBi.
 * tdt_NgayMua là DATE, không có giá trị mặc định.
 */
public class Tdt_ThietBi {

    private String tdt_MaThietBi;      // Mã thiết bị (Primary Key)
    private String tdt_TenThietBi;     // Tên thiết bị
    private String tdt_LoaiThietBi;    // Loại thiết bị
    private String tdt_MaPhong;        // Mã phòng (FK đến tdt_PhongHoc)

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date tdt_NgayMua;         // Ngày mua (DATE, NOT NULL)

    private String tdt_TrangThai;     // Trạng thái (ví dụ: "Đang chờ")
    private String tdt_GhiChu;        // Ghi chú

    // Constructor mặc định
    public Tdt_ThietBi() {
    }

    // Constructor có tham số
    public Tdt_ThietBi(String tdt_MaThietBi, String tdt_TenThietBi, String tdt_LoaiThietBi,
                       String tdt_MaPhong, Date tdt_NgayMua, String tdt_TrangThai, String tdt_GhiChu) {
        this.tdt_MaThietBi = tdt_MaThietBi;
        this.tdt_TenThietBi = tdt_TenThietBi;
        this.tdt_LoaiThietBi = tdt_LoaiThietBi;
        this.tdt_MaPhong = tdt_MaPhong;
        this.tdt_NgayMua = tdt_NgayMua;
        this.tdt_TrangThai = tdt_TrangThai;
        this.tdt_GhiChu = tdt_GhiChu;
    }

    // Getters & Setters
    public String getTdt_MaThietBi() {
        return tdt_MaThietBi;
    }
    public void setTdt_MaThietBi(String tdt_MaThietBi) {
        this.tdt_MaThietBi = tdt_MaThietBi;
    }
    public String getTdt_TenThietBi() {
        return tdt_TenThietBi;
    }
    public void setTdt_TenThietBi(String tdt_TenThietBi) {
        this.tdt_TenThietBi = tdt_TenThietBi;
    }
    public String getTdt_LoaiThietBi() {
        return tdt_LoaiThietBi;
    }
    public void setTdt_LoaiThietBi(String tdt_LoaiThietBi) {
        this.tdt_LoaiThietBi = tdt_LoaiThietBi;
    }
    public String getTdt_MaPhong() {
        return tdt_MaPhong;
    }
    public void setTdt_MaPhong(String tdt_MaPhong) {
        this.tdt_MaPhong = tdt_MaPhong;
    }
    public Date getTdt_NgayMua() {
        return tdt_NgayMua;
    }
    public void setTdt_NgayMua(Date tdt_NgayMua) {
        this.tdt_NgayMua = tdt_NgayMua;
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
