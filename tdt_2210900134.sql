
CREATE DATABASE tdt_2210900134;
USE tdt_2210900134;


-- Bảng Phòng Học
CREATE TABLE tdt_PhongHoc (
    tdt_MaPhong VARCHAR(10) PRIMARY KEY,
    tdt_TenPhong VARCHAR(100) NOT NULL,
    tdt_LoaiPhong VARCHAR(50),
    tdt_SoChoNgoi INT,
    tdt_TrangThai VARCHAR(50) DEFAULT 'Đang chờ',
    tdt_GhiChu TEXT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Bảng Thiết Bị
CREATE TABLE tdt_ThietBi (
    tdt_MaThietBi VARCHAR(10) PRIMARY KEY,
    tdt_TenThietBi VARCHAR(100) NOT NULL,
    tdt_LoaiThietBi VARCHAR(50),
    tdt_MaPhong VARCHAR(10),
    tdt_NgayMua DATE NOT NULL,
    tdt_TrangThai VARCHAR(50) DEFAULT 'Đang chờ',
    tdt_GhiChu TEXT,
    FOREIGN KEY (tdt_MaPhong) REFERENCES tdt_PhongHoc(tdt_MaPhong) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Bảng Người Dùng
CREATE TABLE tdt_NguoiDung (
    tdt_MaNguoiDung INT AUTO_INCREMENT PRIMARY KEY,
    tdt_HoTen VARCHAR(100) NOT NULL,
    tdt_VaiTro VARCHAR(100) NOT NULL,
    tdt_Email VARCHAR(100) UNIQUE NOT NULL,
    tdt_MatKhau VARCHAR(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Bảng Yêu Cầu Sửa
CREATE TABLE tdt_YeuCauSua (
    tdt_MaYeuCau VARCHAR(10) PRIMARY KEY,
    tdt_MoTa TEXT NOT NULL,
    tdt_MaThietBi VARCHAR(10),
    tdt_MaPhong VARCHAR(10),
    tdt_MaNguoiDung INT,
    tdt_TrangThai VARCHAR(50) DEFAULT 'Đang chờ',
    tdt_NgayGui DATE NOT NULL,
    tdt_NgayXuLy DATE,
    FOREIGN KEY (tdt_MaThietBi) REFERENCES tdt_ThietBi(tdt_MaThietBi) ON DELETE SET NULL,
    FOREIGN KEY (tdt_MaPhong) REFERENCES tdt_PhongHoc(tdt_MaPhong) ON DELETE SET NULL,
    FOREIGN KEY (tdt_MaNguoiDung) REFERENCES tdt_NguoiDung(tdt_MaNguoiDung) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Bảng Lịch Sử Đặt Phòng
CREATE TABLE tdt_LichSuDatPhong (
    tdt_MaDatPhong VARCHAR(10) PRIMARY KEY,
    tdt_MaNguoiDung INT,
    tdt_MaPhong VARCHAR(10),
    tdt_ThoiGianBatDau DATE NOT NULL,
    tdt_ThoiGianKetThuc DATE NOT NULL,
    tdt_TrangThai VARCHAR(50) DEFAULT 'Đang chờ',
    FOREIGN KEY (tdt_MaNguoiDung) REFERENCES tdt_NguoiDung(tdt_MaNguoiDung) ON DELETE CASCADE,
    FOREIGN KEY (tdt_MaPhong) REFERENCES tdt_PhongHoc(tdt_MaPhong) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


-- Bảng Phản Hồi
CREATE TABLE tdt_PhanHoi (
    tdt_MaPhanHoi VARCHAR(10) PRIMARY KEY,
    tdt_LoaiPhanHoi VARCHAR(100) NOT NULL,
    tdt_MoTa TEXT NOT NULL,
    CONSTRAINT chk_LoaiPhanHoi CHECK (tdt_LoaiPhanHoi IN ('Thiết bị', 'Phòng học', 'Góp Ý'))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


INSERT INTO tdt_PhongHoc (tdt_MaPhong, tdt_TenPhong, tdt_LoaiPhong, tdt_SoChoNgoi, tdt_TrangThai, tdt_GhiChu) VALUES
('P101', 'Phòng Học 101', 'Lý thuyết', 40, 'Đang chờ', 'Có máy chiếu'),
('P102', 'Phòng Học 102', 'Thực hành', 30, 'Đang chờ', 'Có 10 máy tính');

INSERT INTO tdt_ThietBi (tdt_MaThietBi, tdt_TenThietBi, tdt_LoaiThietBi, tdt_MaPhong, tdt_NgayMua, tdt_TrangThai, tdt_GhiChu) VALUES
('TB001', 'Máy chiếu Sony', 'Thiết bị giảng dạy', 'P101', '2024-01-10', 'Đang chờ', 'Hỗ trợ HDMI'),
('TB002', 'Máy tính Dell', 'Thiết bị văn phòng', 'P102', '2023-12-05', 'Đang chờ', 'Cấu hình Core i5');

INSERT INTO tdt_NguoiDung (tdt_HoTen, tdt_VaiTro, tdt_Email, tdt_MatKhau) VALUES
('Nguyễn Văn A', 'Quản trị viên', 'admin@truong.edu.vn', 'admin123'),
('Trần Thị B', 'Giảng viên', 'gv_b@truong.edu.vn', 'gvpassword');

INSERT INTO tdt_YeuCauSua (tdt_MaYeuCau, tdt_MoTa, tdt_MaThietBi, tdt_MaPhong, tdt_MaNguoiDung, tdt_TrangThai, tdt_NgayGui, tdt_NgayXuLy) VALUES
('YR001', 'Máy chiếu không lên hình', 'TB001', 'P101', 1, 'Đang chờ', '2025-03-07', NULL),
('YR002', 'Máy tính không bật được', 'TB002', 'P102', 2, 'Đang chờ', '2025-03-06', NULL);

INSERT INTO tdt_LichSuDatPhong (tdt_MaDatPhong, tdt_MaNguoiDung, tdt_MaPhong, tdt_ThoiGianBatDau, tdt_ThoiGianKetThuc, tdt_TrangThai)
VALUES 
('DP001', 1, 'P101', '2025-03-20', '2025-03-20', 'Đang chờ'),
('DP002', 2, 'P102', '2025-04-15', '2025-04-15', 'Đang chờ');

INSERT INTO tdt_PhanHoi (tdt_MaPhanHoi, tdt_LoaiPhanHoi, tdt_MoTa) VALUES  
('PH01', 'Góp Ý', 'Ý kiến cải thiện giao diện trang web'),
('PH02', 'Phòng học', 'Đề nghị sắp xếp lại vị trí ghế cho phù hợp.');


select *from tdt_PhongHoc;
select *from tdt_PhanHoi;
select *from tdt_ThietBi;
select *from tdt_NguoiDung;
select *from tdt_YeuCauSua;
select *from tdt_LichSuDatPhong;
select *from tdt_PhanHoi;
DROP TABLE tdt_LichSuDatPhong;
DROP TABLE tdt_YeuCauSua;
DROP TABLE tdt_NguoiDung;
DROP TABLE tdt_ThietBi;
DROP TABLE tdt_PhongHoc;
DROP TABLE tdt_PhanHoi;
