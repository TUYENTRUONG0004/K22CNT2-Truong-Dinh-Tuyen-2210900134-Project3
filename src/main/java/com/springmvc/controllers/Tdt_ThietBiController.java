package com.springmvc.controllers;

import com.springmvc.beans.Tdt_ThietBi;
import com.springmvc.dao.Tdt_ThietBiDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/thietbi")
public class Tdt_ThietBiController {

    @Autowired
    private Tdt_ThietBiDAO tdtThietBiDAO;

    // Hiển thị danh sách thiết bị
    @GetMapping("/list")
    public String listThietBi(Model model) {
        List<Tdt_ThietBi> list = tdtThietBiDAO.list();
        model.addAttribute("thietBiList", list);
        return "thietbi/list"; // /WEB-INF/views/thietbi/list.jsp
    }

    // Hiển thị form thêm thiết bị
    @GetMapping("/add")
    public String addThietBiForm(Model model) {
        model.addAttribute("thietBi", new Tdt_ThietBi());
        return "thietbi/add"; // /WEB-INF/views/thietbi/add.jsp
    }

    // Lưu thiết bị mới
    @PostMapping("/save")
    public String saveThietBi(@ModelAttribute("thietBi") Tdt_ThietBi thietBi) {
        // Nếu mã thiết bị để trống, sinh mã tự động
        if (thietBi.getTdt_MaThietBi() == null || thietBi.getTdt_MaThietBi().trim().isEmpty()) {
            String generatedId = "TB" + System.currentTimeMillis();
            thietBi.setTdt_MaThietBi(generatedId);
        }
        tdtThietBiDAO.save(thietBi);
        return "redirect:/thietbi/list";
    }

    // Hiển thị form sửa thông tin thiết bị
    @GetMapping("/edit/{id}")
    public String editThietBiForm(@PathVariable("id") String maThietBi, Model model) {
        Tdt_ThietBi thietBi = tdtThietBiDAO.getById(maThietBi);
        model.addAttribute("thietBi", thietBi);
        return "thietbi/edit"; // /WEB-INF/views/thietbi/edit.jsp
    }

    // Cập nhật thiết bị
    @PostMapping("/update")
    public String updateThietBi(@ModelAttribute("thietBi") Tdt_ThietBi thietBi, 
                                BindingResult bindingResult) {
        // In ra console để kiểm tra lỗi
        if (bindingResult.hasErrors()) {
            System.out.println("Binding errors: " + bindingResult);
            // Quay lại trang edit cùng thông báo lỗi
            return "thietbi/edit";
        }

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
