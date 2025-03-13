package com.springmvc.dao;

import com.springmvc.beans.Tdt_YeuCauSua;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Tdt_YeuCauSuaDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public Tdt_YeuCauSuaDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // RowMapper pour mapper les résultats de la requête SQL
    private static class Tdt_YeuCauSuaRowMapper implements RowMapper<Tdt_YeuCauSua> {
        @Override
        public Tdt_YeuCauSua mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_YeuCauSua yc = new Tdt_YeuCauSua();
            yc.setTdt_MaYeuCau(rs.getString("tdt_MaYeuCau"));
            yc.setTdt_MoTa(rs.getString("tdt_MoTa"));
            yc.setTdt_MaThietBi(rs.getString("tdt_MaThietBi"));
            yc.setTdt_MaPhong(rs.getString("tdt_MaPhong"));
            yc.setTdt_MaNguoiDung(rs.getInt("tdt_MaNguoiDung"));
            yc.setTdt_TrangThai(rs.getString("tdt_TrangThai"));
            yc.setTdt_NgayGui(rs.getDate("tdt_NgayGui"));
            yc.setTdt_NgayXuLy(rs.getDate("tdt_NgayXuLy"));
            return yc;
        }
    }

    public List<Tdt_YeuCauSua> list() {
        String sql = "SELECT * FROM tdt_YeuCauSua";
        return jdbcTemplate.query(sql, new Tdt_YeuCauSuaRowMapper());
    }
    
    // Lấy thông tin yêu cầu sửa theo mã
    public Tdt_YeuCauSua getById(String maYeuCau) {
        String sql = "SELECT * FROM tdt_YeuCauSua WHERE tdt_MaYeuCau = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{maYeuCau}, new Tdt_YeuCauSuaRowMapper());
    }

    // Tạo mới yêu cầu sửa
    public int save(Tdt_YeuCauSua yeuCau) {
        String sql = "INSERT INTO tdt_YeuCauSua (tdt_MaYeuCau, tdt_MoTa, tdt_MaThietBi, tdt_MaPhong, tdt_MaNguoiDung, tdt_TrangThai, tdt_NgayGui, tdt_NgayXuLy) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                yeuCau.getTdt_MaYeuCau(),
                yeuCau.getTdt_MoTa(),
                yeuCau.getTdt_MaThietBi(),
                yeuCau.getTdt_MaPhong(),
                yeuCau.getTdt_MaNguoiDung(),
                yeuCau.getTdt_TrangThai(),
                yeuCau.getTdt_NgayGui(),
                yeuCau.getTdt_NgayXuLy());
    }

    // Cập nhật thông tin yêu cầu sửa
    public int update(Tdt_YeuCauSua yeuCau) {
        String sql = "UPDATE tdt_YeuCauSua SET tdt_MoTa = ?, tdt_MaThietBi = ?, tdt_MaPhong = ?, tdt_MaNguoiDung = ?, tdt_TrangThai = ?, tdt_NgayGui = ?, tdt_NgayXuLy = ? WHERE tdt_MaYeuCau = ?";
        return jdbcTemplate.update(sql,
                yeuCau.getTdt_MoTa(),
                yeuCau.getTdt_MaThietBi(),
                yeuCau.getTdt_MaPhong(),
                yeuCau.getTdt_MaNguoiDung(),
                yeuCau.getTdt_TrangThai(),
                yeuCau.getTdt_NgayGui(),
                yeuCau.getTdt_NgayXuLy(),
                yeuCau.getTdt_MaYeuCau());
    }

    // Xóa yêu cầu sửa theo mã
    public int delete(String maYeuCau) {
        String sql = "DELETE FROM tdt_YeuCauSua WHERE tdt_MaYeuCau = ?";
        return jdbcTemplate.update(sql, maYeuCau);
    }
}
