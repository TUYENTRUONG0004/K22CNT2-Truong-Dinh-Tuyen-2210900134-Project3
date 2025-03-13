package com.springmvc.dao;

import com.springmvc.beans.Tdt_PhanHoi;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class Tdt_PhanHoiDAO {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public Tdt_PhanHoiDAO(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    // RowMapper để ánh xạ kết quả từ ResultSet sang đối tượng Tdt_PhanHoi
    private static class Tdt_PhanHoiRowMapper implements RowMapper<Tdt_PhanHoi> {
        @Override
        public Tdt_PhanHoi mapRow(ResultSet rs, int rowNum) throws SQLException {
            Tdt_PhanHoi phanHoi = new Tdt_PhanHoi();
            phanHoi.setTdt_MaPhanHoi(rs.getString("tdt_MaPhanHoi"));
            phanHoi.setTdt_LoaiPhanHoi(rs.getString("tdt_LoaiPhanHoi"));
            phanHoi.setTdt_MoTa(rs.getString("tdt_MoTa"));
            return phanHoi;
        }
    }

    // Thêm phản hồi mới
    public int save(Tdt_PhanHoi phanHoi) {
        String sql = "INSERT INTO tdt_PhanHoi (tdt_MaPhanHoi, tdt_LoaiPhanHoi, tdt_MoTa) VALUES (?, ?, ?)";
        return jdbcTemplate.update(sql, phanHoi.getTdt_MaPhanHoi(),
                                         phanHoi.getTdt_LoaiPhanHoi(),
                                         phanHoi.getTdt_MoTa());
    }

    // Lấy danh sách tất cả phản hồi
    public List<Tdt_PhanHoi> list() {
        String sql = "SELECT * FROM tdt_PhanHoi";
        return jdbcTemplate.query(sql, new Tdt_PhanHoiRowMapper());
    }

    // Xóa phản hồi theo mã
    public int delete(String maPhanHoi) {
        String sql = "DELETE FROM tdt_PhanHoi WHERE tdt_MaPhanHoi = ?";
        return jdbcTemplate.update(sql, maPhanHoi);
    }
}
