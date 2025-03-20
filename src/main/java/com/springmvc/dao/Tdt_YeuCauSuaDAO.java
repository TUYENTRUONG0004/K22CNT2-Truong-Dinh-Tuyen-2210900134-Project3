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

    // RowMapper được cập nhật để sử dụng kiểu dữ liệu mới
    private static class Tdt_YeuCauSuaRowMapper implements RowMapper<Tdt_YeuCauSua> {
        @Override
        public Tdt_YeuCauSua mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_YeuCauSua yc = new Tdt_YeuCauSua();
            yc.setTdt_MaYeuCau(rs.getString("tdt_MaYeuCau"));
            yc.setTdt_MoTa(rs.getString("tdt_MoTa"));
            yc.setTdt_MaThietBi(rs.getString("tdt_MaThietBi"));
            yc.setTdt_MaPhong(rs.getString("tdt_MaPhong"));
            // Chuyển đổi an toàn cho tdt_MaNguoiDung (Integer)
            Object nguoiDungObj = rs.getObject("tdt_MaNguoiDung");
            yc.setTdt_MaNguoiDung(nguoiDungObj != null ? ((Number) nguoiDungObj).intValue() : null);
            yc.setTdt_TrangThai(rs.getString("tdt_TrangThai"));
            yc.setTdt_NgayGui(rs.getDate("tdt_NgayGui"));     // java.sql.Date kế thừa java.util.Date
            yc.setTdt_NgayXuLy(rs.getDate("tdt_NgayXuLy"));
            return yc;
        }
    }

    // Lấy danh sách yêu cầu sửa
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
                yeuCau.getTdt_NgayGui() != null ? new java.sql.Date(yeuCau.getTdt_NgayGui().getTime()) : null,
                yeuCau.getTdt_NgayXuLy() != null ? new java.sql.Date(yeuCau.getTdt_NgayXuLy().getTime()) : null);
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
                yeuCau.getTdt_NgayGui() != null ? new java.sql.Date(yeuCau.getTdt_NgayGui().getTime()) : null,
                yeuCau.getTdt_NgayXuLy() != null ? new java.sql.Date(yeuCau.getTdt_NgayXuLy().getTime()) : null,
                yeuCau.getTdt_MaYeuCau());
    }

    // Xóa yêu cầu sửa theo mã
    public int delete(String maYeuCau) {
        String sql = "DELETE FROM tdt_YeuCauSua WHERE tdt_MaYeuCau = ?";
        return jdbcTemplate.update(sql, maYeuCau);
    }
}
