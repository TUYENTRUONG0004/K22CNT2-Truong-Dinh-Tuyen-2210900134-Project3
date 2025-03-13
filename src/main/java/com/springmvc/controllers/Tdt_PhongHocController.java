package com.springmvc.controllers;

import com.springmvc.beans.Tdt_PhongHoc;
import com.springmvc.dao.Tdt_PhongHocDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/phonghoc")
public class Tdt_PhongHocController {

    @Autowired
    private Tdt_PhongHocDAO tdtPhongHocDAO;

    // Hiển thị danh sách các phòng học
    @GetMapping("/list")
    public String listPhongHoc(Model model) {
        List<Tdt_PhongHoc> list = tdtPhongHocDAO.list();
        model.addAttribute("phongHocList", list);
        return "phonghoc/list"; // trỏ đến view list.html trong thư mục phonghoc
    }

    // Hiển thị form thêm phòng học mới
    @GetMapping("/add")
    public String addPhongHocForm(Model model) {
        model.addAttribute("phongHoc", new Tdt_PhongHoc());
        return "phonghoc/add"; // trỏ đến view add.html trong thư mục phonghoc
    }

    // Lưu phòng học mới
    @PostMapping("/save")
    public String savePhongHoc(@ModelAttribute("phongHoc") Tdt_PhongHoc phongHoc) {
    	tdtPhongHocDAO.save(phongHoc);
        return "redirect:/phonghoc/list";
    }

    // Hiển thị form sửa thông tin phòng học
    @GetMapping("/edit/{id}")
    public String editPhongHoc(@PathVariable("id") String maPhong, Model model) {
        Tdt_PhongHoc phong = tdtPhongHocDAO.getById(maPhong);
        model.addAttribute("phong", phong); 
        return "phonghoc/edit"; // => /WEB-INF/views/phonghoc/edit.jsp
    }
    // Cập nhật thông tin phòng học
    @PostMapping("/update")
    public String updatePhongHoc(@ModelAttribute("phongHoc") Tdt_PhongHoc phongHoc) {
    	tdtPhongHocDAO.update(phongHoc);
        return "redirect:/phonghoc/list";
    }

    // Xóa phòng học theo mã
    @GetMapping("/delete/{id}")
    public String deletePhongHoc(@PathVariable("id") String maPhong) {
    	tdtPhongHocDAO.delete(maPhong);
        return "redirect:/phonghoc/list";
    }
}
