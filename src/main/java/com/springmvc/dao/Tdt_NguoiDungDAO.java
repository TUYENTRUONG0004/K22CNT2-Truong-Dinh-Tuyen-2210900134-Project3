package com.springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;
import com.springmvc.beans.Tdt_NguoiDung;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Tdt_NguoiDungDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public Tdt_NguoiDungDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // Ví dụ về RowMapper
    private static class Tdt_NguoiDungRowMapper implements RowMapper<Tdt_NguoiDung> {
        @Override
        public Tdt_NguoiDung mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_NguoiDung nd = new Tdt_NguoiDung();
            nd.setTdt_MaNguoiDung(rs.getInt("tdt_MaNguoiDung"));
            nd.setTdt_HoTen(rs.getString("tdt_HoTen"));
            nd.setTdt_VaiTro(rs.getString("tdt_VaiTro"));
            nd.setTdt_Email(rs.getString("tdt_Email"));
            nd.setTdt_MatKhau(rs.getString("tdt_MatKhau"));
            return nd;
        }
    }

    // Tạo mới người dùng
    public int save(Tdt_NguoiDung nguoiDung) {
        String sql = "INSERT INTO tdt_NguoiDung (tdt_HoTen, tdt_VaiTro, tdt_Email, tdt_MatKhau) VALUES (?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                nguoiDung.getTdt_HoTen(),
                nguoiDung.getTdt_VaiTro(),
                nguoiDung.getTdt_Email(),
                nguoiDung.getTdt_MatKhau());
    }

    // Lấy thông tin người dùng theo id
    public Tdt_NguoiDung getById(int id) {
        String sql = "SELECT * FROM tdt_NguoiDung WHERE tdt_MaNguoiDung = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{id}, new Tdt_NguoiDungRowMapper());
    }

    // Cập nhật người dùng
    public int update(Tdt_NguoiDung nguoiDung) {
        String sql = "UPDATE tdt_NguoiDung SET tdt_HoTen = ?, tdt_VaiTro = ?, tdt_Email = ?, tdt_MatKhau = ? WHERE tdt_MaNguoiDung = ?";
        return jdbcTemplate.update(sql,
                nguoiDung.getTdt_HoTen(),
                nguoiDung.getTdt_VaiTro(),
                nguoiDung.getTdt_Email(),
                nguoiDung.getTdt_MatKhau(),
                nguoiDung.getTdt_MaNguoiDung());
    }

    // Xóa người dùng theo id
    public int delete(int id) {
        String sql = "DELETE FROM tdt_NguoiDung WHERE tdt_MaNguoiDung = ?";
        return jdbcTemplate.update(sql, id);
    }

    // Lấy danh sách tất cả người dùng

    public List<Tdt_NguoiDung> list() {
        String sql = "SELECT * FROM tdt_NguoiDung";
        List<Tdt_NguoiDung> result = jdbcTemplate.query(sql, new Tdt_NguoiDungRowMapper());
        System.out.println("Số bản ghi lấy được: " + result.size());
        return result;
    }

}
