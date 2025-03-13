package com.springmvc.dao;

import com.springmvc.beans.Tdt_PhongHoc;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Tdt_PhongHocDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public Tdt_PhongHocDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // RowMapper để ánh xạ dữ liệu từ ResultSet sang đối tượng Tdt_PhongHoc
    private static class Tdt_PhongHocRowMapper implements RowMapper<Tdt_PhongHoc> {
        @Override
        public Tdt_PhongHoc mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_PhongHoc phongHoc = new Tdt_PhongHoc();
            phongHoc.setTdt_MaPhong(rs.getString("tdt_MaPhong"));
            phongHoc.setTdt_TenPhong(rs.getString("tdt_TenPhong"));
            phongHoc.setTdt_LoaiPhong(rs.getString("tdt_LoaiPhong"));
            phongHoc.setTdt_SoChoNgoi(rs.getInt("tdt_SoChoNgoi"));
            phongHoc.setTdt_TrangThai(rs.getString("tdt_TrangThai"));
            phongHoc.setTdt_GhiChu(rs.getString("tdt_GhiChu"));
            return phongHoc;
        }
    }

    // Lấy danh sách tất cả phòng học
    public List<Tdt_PhongHoc> list() {
        String sql = "SELECT * FROM tdt_PhongHoc";
        return jdbcTemplate.query(sql, new Tdt_PhongHocRowMapper());
    }

    // Lấy thông tin phòng học theo mã phòng
    public Tdt_PhongHoc getById(String maPhong) {
        String sql = "SELECT * FROM tdt_PhongHoc WHERE tdt_MaPhong = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{maPhong}, new Tdt_PhongHocRowMapper());
    }

    // Tạo mới phòng học
    public int save(Tdt_PhongHoc phongHoc) {
        String sql = "INSERT INTO tdt_PhongHoc (tdt_MaPhong, tdt_TenPhong, tdt_LoaiPhong, tdt_SoChoNgoi, tdt_TrangThai, tdt_GhiChu) VALUES (?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                phongHoc.getTdt_MaPhong(),
                phongHoc.getTdt_TenPhong(),
                phongHoc.getTdt_LoaiPhong(),
                phongHoc.getTdt_SoChoNgoi(),
                phongHoc.getTdt_TrangThai(),
                phongHoc.getTdt_GhiChu());
    }

    // Cập nhật thông tin phòng học
    public int update(Tdt_PhongHoc phongHoc) {
        String sql = "UPDATE tdt_PhongHoc SET tdt_TenPhong = ?, tdt_LoaiPhong = ?, tdt_SoChoNgoi = ?, tdt_TrangThai = ?, tdt_GhiChu = ? WHERE tdt_MaPhong = ?";
        return jdbcTemplate.update(sql,
                phongHoc.getTdt_TenPhong(),
                phongHoc.getTdt_LoaiPhong(),
                phongHoc.getTdt_SoChoNgoi(),
                phongHoc.getTdt_TrangThai(),
                phongHoc.getTdt_GhiChu(),
                phongHoc.getTdt_MaPhong());
    }

    // Xóa phòng học theo mã
    public int delete(String maPhong) {
        String sql = "DELETE FROM tdt_PhongHoc WHERE tdt_MaPhong = ?";
        return jdbcTemplate.update(sql, maPhong);
    }
}
