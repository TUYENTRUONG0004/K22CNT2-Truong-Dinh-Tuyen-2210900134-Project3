package com.springmvc.dao;

import com.springmvc.beans.Tdt_LichSuDatPhong;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.List;

@Repository
public class Tdt_LichSuDatPhongDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public Tdt_LichSuDatPhongDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // RowMapper: chuyển dữ liệu từ ResultSet sang đối tượng Tdt_LichSuDatPhong
    private static class Tdt_LichSuDatPhongRowMapper implements RowMapper<Tdt_LichSuDatPhong> {
        @Override
        public Tdt_LichSuDatPhong mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_LichSuDatPhong lichSu = new Tdt_LichSuDatPhong();
            lichSu.setTdt_MaDatPhong(rs.getString("tdt_MaDatPhong"));
            lichSu.setTdt_MaNguoiDung(rs.getInt("tdt_MaNguoiDung"));
            lichSu.setTdt_MaPhong(rs.getString("tdt_MaPhong"));

            Timestamp tsBatDau = rs.getTimestamp("tdt_ThoiGianBatDau");
            if (tsBatDau != null) {
                lichSu.setTdt_ThoiGianBatDau(tsBatDau.toLocalDateTime());
            }
            Timestamp tsKetThuc = rs.getTimestamp("tdt_ThoiGianKetThuc");
            if (tsKetThuc != null) {
                lichSu.setTdt_ThoiGianKetThuc(tsKetThuc.toLocalDateTime());
            }
            lichSu.setTdt_TrangThai(rs.getString("tdt_TrangThai"));
            return lichSu;
        }
    }

    // Lấy danh sách tất cả lịch sử đặt phòng
    public List<Tdt_LichSuDatPhong> list() {
        String sql = "SELECT * FROM tdt_LichSuDatPhong";
        return jdbcTemplate.query(sql, new Tdt_LichSuDatPhongRowMapper());
    }

    // Lấy thông tin lịch sử đặt phòng theo mã đặt phòng
    public Tdt_LichSuDatPhong getById(String maDatPhong) {
        String sql = "SELECT * FROM tdt_LichSuDatPhong WHERE tdt_MaDatPhong = ?";
        return jdbcTemplate.queryForObject(sql, new Object[]{maDatPhong}, new Tdt_LichSuDatPhongRowMapper());
    }

    // Tạo mới lịch sử đặt phòng
    public int save(Tdt_LichSuDatPhong lichSu) {
        String sql = "INSERT INTO tdt_LichSuDatPhong (tdt_MaDatPhong, tdt_MaNguoiDung, tdt_MaPhong, tdt_ThoiGianBatDau, tdt_ThoiGianKetThuc, tdt_TrangThai) VALUES (?, ?, ?, ?, ?, ?)";
        return jdbcTemplate.update(sql,
                lichSu.getTdt_MaDatPhong(),
                lichSu.getTdt_MaNguoiDung(),
                lichSu.getTdt_MaPhong(),
                lichSu.getTdt_ThoiGianBatDau() != null ? Timestamp.valueOf(lichSu.getTdt_ThoiGianBatDau()) : null,
                lichSu.getTdt_ThoiGianKetThuc() != null ? Timestamp.valueOf(lichSu.getTdt_ThoiGianKetThuc()) : null,
                lichSu.getTdt_TrangThai());
    }

    // Cập nhật thông tin lịch sử đặt phòng
    public int update(Tdt_LichSuDatPhong lichSu) {
        String sql = "UPDATE tdt_LichSuDatPhong SET tdt_MaNguoiDung = ?, tdt_MaPhong = ?, tdt_ThoiGianBatDau = ?, tdt_ThoiGianKetThuc = ?, tdt_TrangThai = ? WHERE tdt_MaDatPhong = ?";
        return jdbcTemplate.update(sql,
                lichSu.getTdt_MaNguoiDung(),
                lichSu.getTdt_MaPhong(),
                lichSu.getTdt_ThoiGianBatDau() != null ? Timestamp.valueOf(lichSu.getTdt_ThoiGianBatDau()) : null,
                lichSu.getTdt_ThoiGianKetThuc() != null ? Timestamp.valueOf(lichSu.getTdt_ThoiGianKetThuc()) : null,
                lichSu.getTdt_TrangThai(),
                lichSu.getTdt_MaDatPhong());
    }

    // Xóa lịch sử đặt phòng theo mã đặt phòng
    public int delete(String maDatPhong) {
        String sql = "DELETE FROM tdt_LichSuDatPhong WHERE tdt_MaDatPhong = ?";
        return jdbcTemplate.update(sql, maDatPhong);
    }
}
