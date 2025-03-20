package com.springmvc.controllers;

import com.springmvc.beans.Tdt_LichSuDatPhong;
import com.springmvc.dao.Tdt_LichSuDatPhongDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/lichsudatphong")
public class Tdt_LichSuDatPhongController {

    @Autowired
    private Tdt_LichSuDatPhongDAO tdtLichSuDatPhongDAO;

    // Hiển thị danh sách lịch sử đặt phòng
    @GetMapping("/list")
    public String listLichSu(Model model) {
        List<Tdt_LichSuDatPhong> list = tdtLichSuDatPhongDAO.list();
        model.addAttribute("lichSuList", list);
        return "lichsudatphong/list"; // File JSP: /WEB-INF/views/lichsudatphong/list.jsp
    }

    // Hiển thị form thêm lịch sử đặt phòng mới
    @GetMapping("/add")
    public String addLichSuForm(Model model) {
        model.addAttribute("lichSu", new Tdt_LichSuDatPhong());
        return "lichsudatphong/add"; // File JSP: /WEB-INF/views/lichsudatphong/add.jsp
    }

    // Lưu lịch sử đặt phòng mới
    @PostMapping("/save")
    public String saveLichSu(@ModelAttribute("lichSu") Tdt_LichSuDatPhong lichSu) {
        // Sinh mã tự động nếu không được nhập từ form
        if (lichSu.getTdt_MaDatPhong() == null || lichSu.getTdt_MaDatPhong().trim().isEmpty()) {
            String generatedId = "DP" + System.currentTimeMillis();
            lichSu.setTdt_MaDatPhong(generatedId);
        }
        tdtLichSuDatPhongDAO.save(lichSu);
        return "redirect:/lichsudatphong/list";
    }

    // Hiển thị form sửa thông tin lịch sử đặt phòng
    @GetMapping("/edit/{id}")
    public String editLichSuForm(@PathVariable("id") String maDatPhong, Model model) {
        Tdt_LichSuDatPhong lichSu = tdtLichSuDatPhongDAO.getById(maDatPhong);
        model.addAttribute("lichSu", lichSu);
        return "lichsudatphong/edit"; // File JSP: /WEB-INF/views/lichsudatphong/edit.jsp
    }

    @PostMapping("/update")
    public String updateLichSu(@ModelAttribute("lichSu") Tdt_LichSuDatPhong lichSu, BindingResult result) {
        if(result.hasErrors()){
            // Log lỗi hoặc in ra console để xem chi tiết
            System.out.println(result);
            return "lichsudatphong/edit"; // Quay lại form sửa, hiển thị thông báo lỗi
        }
        tdtLichSuDatPhongDAO.update(lichSu);
        return "redirect:/lichsudatphong/list";
    }


    // Xóa lịch sử đặt phòng theo mã đặt phòng
    @GetMapping("/delete/{id}")
    public String deleteLichSu(@PathVariable("id") String maDatPhong) {
        tdtLichSuDatPhongDAO.delete(maDatPhong);
        return "redirect:/lichsudatphong/list";
    }
}
