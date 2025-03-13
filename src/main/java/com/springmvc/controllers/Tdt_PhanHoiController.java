package com.springmvc.controllers;

import com.springmvc.beans.Tdt_PhanHoi;
import com.springmvc.dao.Tdt_PhanHoiDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/phanhoi")
public class Tdt_PhanHoiController {

    @Autowired
    private Tdt_PhanHoiDAO tdtphanHoiDAO;

    // Hiển thị danh sách phản hồi
    @GetMapping("/list")
    public String listPhanHoi(Model model) {
        model.addAttribute("phanHoiList", tdtphanHoiDAO.list());
        return "phanhoi/list"; // => /WEB-INF/views/phanhoi/list.jsp
    }

    // Hiển thị form thêm phản hồi
    @GetMapping("/add")
    public String addPhanHoiForm(Model model) {
        model.addAttribute("phanHoi", new Tdt_PhanHoi());
        return "phanhoi/add"; // => /WEB-INF/views/phanhoi/add.jsp
    }

    // Lưu phản hồi mới
    @PostMapping("/save")
    public String savePhanHoi(@ModelAttribute("phanHoi") Tdt_PhanHoi phanHoi) {
        tdtphanHoiDAO.save(phanHoi);
        return "redirect:/phanhoi/list";
    }

    // Xóa phản hồi theo mã
    @GetMapping("/delete/{id}")
    public String deletePhanHoi(@PathVariable("id") String maPhanHoi) {
        tdtphanHoiDAO.delete(maPhanHoi);
        return "redirect:/phanhoi/list";
    }
}
