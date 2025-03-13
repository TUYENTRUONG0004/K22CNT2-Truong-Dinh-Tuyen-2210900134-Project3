package com.springmvc.controllers;

import com.springmvc.beans.Tdt_ThietBi;
import com.springmvc.dao.Tdt_ThietBiDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/thietbi")
public class Tdt_ThietBiController {

    @Autowired
    private Tdt_ThietBiDAO tdtThietBiDAO;

    // Hiển thị danh sách các thiết bị
    @GetMapping("/list")
    public String listThietBi(Model model) {
        List<Tdt_ThietBi> list = tdtThietBiDAO.list();
        model.addAttribute("thietBiList", list);
        return "thietbi/list"; // trỏ đến view list.html trong thư mục thietbi
    }

    // Hiển thị form thêm thiết bị mới
    @GetMapping("/add")
    public String addThietBiForm(Model model) {
        model.addAttribute("thietBi", new Tdt_ThietBi());
        return "thietbi/add"; // trỏ đến view add.html trong thư mục thietbi
    }

    // Lưu thiết bị mới
    @PostMapping("/save")
    public String saveThietBi(@ModelAttribute("thietBi") Tdt_ThietBi thietBi) {
        // Thêm log kiểm tra
        System.out.println("ThietBi = " + thietBi);
        tdtThietBiDAO.save(thietBi);
        return "redirect:/thietbi/list";
    }
    

    // Hiển thị form sửa thông tin thiết bị
    @GetMapping("/edit/{id}")
    public String editThietBiForm(@PathVariable("id") String maThietBi, Model model) {
        Tdt_ThietBi thietBi = tdtThietBiDAO.getById(maThietBi);
        model.addAttribute("thietBi", thietBi);
        return "thietbi/edit"; // trỏ đến view edit.html trong thư mục thietbi
    }

    // Cập nhật thông tin thiết bị
    @PostMapping("/update")
    public String updateThietBi(@ModelAttribute("thietBi") Tdt_ThietBi thietBi) {
    	tdtThietBiDAO.update(thietBi);
        return "redirect:/thietbi/list";
    }

    // Xóa thiết bị theo mã
    @GetMapping("/delete/{id}")
    public String deleteThietBi(@PathVariable("id") String maThietBi) {
    	tdtThietBiDAO.delete(maThietBi);
        return "redirect:/thietbi/list";
    }
}
