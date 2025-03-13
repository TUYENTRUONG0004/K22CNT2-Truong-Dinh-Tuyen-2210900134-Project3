package com.springmvc.dao;

import com.springmvc.beans.Tdt_ThietBi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Tdt_ThietBiDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public Tdt_ThietBiDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

 
    private static class Tdt_ThietBiRowMapper implements RowMapper<Tdt_ThietBi> {
        @Override
        public Tdt_ThietBi mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_ThietBi thietBi = new Tdt_ThietBi();
            thietBi.setTdt_MaThietBi(rs.getString("tdt_MaThietBi"));
            thietBi.setTdt_TenThietBi(rs.getString("tdt_TenThietBi"));
            thietBi.setTdt_LoaiThietBi(rs.getString("tdt_LoaiThietBi"));
            thietBi.setTdt_MaPhong(rs.getString("tdt_MaPhong"));
            thietBi.setTdt_NgayMua(rs.getDate("tdt_NgayMua"));
            thietBi.setTdt_TrangThai(rs.getString("tdt_TrangThai"));
            thietBi.setTdt_GhiChu(rs.getString("tdt_GhiChu"));
            return thietBi;
        }
    }

    // Lấy danh sách tất cả thiết bị
    public List<Tdt_ThietBi> list() {
        String sql = "SELECT * FROM tdt_ThietBi";
        return jdbcTemplate.query(sql, new Tdt_ThietBiRowMapper());
    }
    // Lấy thông tin thiết bị theo mã
    public Tdt_ThietBi getById(String maThietBi) {
        String sql = "SELECT * FROM tdt_ThietBi WHERE tdt_MaThietBi = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{maThietBi}, new Tdt_ThietBiRowMapper());
    }

    // Tạo mới thiết bị
    public int save(Tdt_ThietBi thietBi) {
        String sql = "INSERT INTO tdt_ThietBi (tdt_MaThietBi, tdt_TenThietBi, tdt_LoaiThietBi, tdt_MaPhong, tdt_NgayMua, tdt_TrangThai, tdt_GhiChu) VALUES (?, ?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                thietBi.getTdt_MaThietBi(),
                thietBi.getTdt_TenThietBi(),
                thietBi.getTdt_LoaiThietBi(),
                thietBi.getTdt_MaPhong(),
                thietBi.getTdt_NgayMua(),
                thietBi.getTdt_TrangThai(),
                thietBi.getTdt_GhiChu());
    }

    // Cập nhật thông tin thiết bị
    public int update(Tdt_ThietBi thietBi) {
        String sql = "UPDATE tdt_ThietBi SET tdt_TenThietBi = ?, tdt_LoaiThietBi = ?, tdt_MaPhong = ?, tdt_NgayMua = ?, tdt_TrangThai = ?, tdt_GhiChu = ? WHERE tdt_MaThietBi = ?";
        return jdbcTemplate.update(sql,
                thietBi.getTdt_TenThietBi(),
                thietBi.getTdt_LoaiThietBi(),
                thietBi.getTdt_MaPhong(),
                thietBi.getTdt_NgayMua(),
                thietBi.getTdt_TrangThai(),
                thietBi.getTdt_GhiChu(),
                thietBi.getTdt_MaThietBi());
    }

    // Xóa thiết bị theo mã
    public int delete(String maThietBi) {
        String sql = "DELETE FROM tdt_ThietBi WHERE tdt_MaThietBi = ?";
        return jdbcTemplate.update(sql, maThietBi);
    }
}
