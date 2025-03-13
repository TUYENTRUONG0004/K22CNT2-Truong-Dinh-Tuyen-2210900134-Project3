package com.springmvc.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.springmvc.beans.Tdt_NguoiDung;
import com.springmvc.beans.menuItem;
import com.springmvc.dao.Tdt_NguoiDungDAO;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/nguoidung")
public class Tdt_NguoiDungController {

    @Autowired
    private Tdt_NguoiDungDAO tdtNguoiDungDAO;

    // Hiển thị danh sách người dùng
    @GetMapping("/list")
    public String getAllNguoiDung(Model model) {
        List<Tdt_NguoiDung> list = tdtNguoiDungDAO.list();
        model.addAttribute("nguoiDungList", list);
        return "nguoidung/list"; 
    }


    // Hiển thị form thêm người dùng
    @GetMapping("/add")
    public String addNguoiDungForm(Model model) {
        model.addAttribute("nguoiDung", new Tdt_NguoiDung());
        return "nguoidung/add"; // Trả về file add.html
    }

    // Lưu người dùng mới
    @PostMapping("/save")
    public String saveNguoiDung(@ModelAttribute("nguoiDung") Tdt_NguoiDung nguoiDung) {
    	tdtNguoiDungDAO.save(nguoiDung);
        return "redirect:/nguoidung/list";
    }


    // Hiển thị form sửa thông tin người dùng
    @GetMapping("/edit/{id}")
    public String editNguoiDungForm(@PathVariable("id") int id, Model model) {
        Tdt_NguoiDung nguoiDung = tdtNguoiDungDAO.getById(id);
        model.addAttribute("nguoiDung", nguoiDung);
        return "nguoidung/edit"; // trỏ đến file edit.html trong thư mục nguoidung
    }

    // Cập nhật thông tin người dùng
    @PostMapping("/update")
    public String updateNguoiDung(@ModelAttribute("nguoidung") Tdt_NguoiDung nguoiDung) {
    	tdtNguoiDungDAO.update(nguoiDung);
        return "redirect:/nguoidung/list";
    }

    // Xóa người dùng theo id
    @GetMapping("/delete/{id}")
    public String deleteNguoiDung(@PathVariable("id") int id) {
    	tdtNguoiDungDAO.delete(id);
        return "redirect:/nguoidung/list";
    }
    @GetMapping("/menu")
    public String getMenu(Model model) {
        List<menuItem> menuItems = Arrays.asList(
            new menuItem("Trang chủ", "/SpringMVCPagination"),
            new menuItem("Danh sách nhân viên", "/SpringMVCPagination/nguoidung/list"),
            new menuItem("Thêm nhân viên mới", "/SpringMVCPagination/nguoidung/add")
        );
        model.addAttribute("menuItems", menuItems);
        return "menu"; // Tên view (menu.jsp)
    }
}
