package com.springmvc.beans;

public class Tdt_PhanHoi {
    
    private String tdt_MaPhanHoi;
    private String tdt_LoaiPhanHoi;
    private String tdt_MoTa;

    public Tdt_PhanHoi() {}

    public Tdt_PhanHoi(String tdt_MaPhanHoi, String tdt_LoaiPhanHoi, String tdt_MoTa) {
        this.tdt_MaPhanHoi = tdt_MaPhanHoi;
        this.tdt_LoaiPhanHoi = tdt_LoaiPhanHoi;
        this.tdt_MoTa = tdt_MoTa;
    }

    public String getTdt_MaPhanHoi() {
        return tdt_MaPhanHoi;
    }

    public void setTdt_MaPhanHoi(String tdt_MaPhanHoi) {
        this.tdt_MaPhanHoi = tdt_MaPhanHoi;
    }

    public String getTdt_LoaiPhanHoi() {
        return tdt_LoaiPhanHoi;
    }

    public void setTdt_LoaiPhanHoi(String tdt_LoaiPhanHoi) {
        this.tdt_LoaiPhanHoi = tdt_LoaiPhanHoi;
    }

    public String getTdt_MoTa() {
        return tdt_MoTa;
    }

    public void setTdt_MoTa(String tdt_MoTa) {
        this.tdt_MoTa = tdt_MoTa;
    }
}
