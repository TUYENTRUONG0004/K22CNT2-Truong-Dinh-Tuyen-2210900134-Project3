package com.springmvc.controllers;

import com.springmvc.beans.Tdt_YeuCauSua;
import com.springmvc.dao.Tdt_YeuCauSuaDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping("/yeucausua")
public class Tdt_YeuCauSuaController {

    @Autowired
    private Tdt_YeuCauSuaDAO tdtYeuCauSuaDAO;

    // Hiển thị danh sách yêu cầu sửa
    @GetMapping("/list")
    public String listYeuCau(Model model) {
        List<Tdt_YeuCauSua> list = tdtYeuCauSuaDAO.list();
        model.addAttribute("yeuCauList", list);
        return "yeucausua/list"; 
    }

    // Hiển thị form thêm yêu cầu sửa mới
    @GetMapping("/add")
    public String addYeuCauForm(Model model) {
        model.addAttribute("yeuCau", new Tdt_YeuCauSua());
        return "yeucausua/add";
    }

    // Lưu yêu cầu sửa mới với kiểm tra BindingResult
    @PostMapping("/save")
    public String saveYeuCau(@ModelAttribute("yeuCau") Tdt_YeuCauSua yeuCau, BindingResult result, Model model) {
        if(result.hasErrors()){
            // In ra log lỗi để kiểm tra chi tiết
            System.out.println("Lỗi binding: " + result);
            return "yeucausua/add"; // quay lại form nếu có lỗi
        }
        // Nếu chưa có mã, bạn có thể tự sinh mã tại đây (nếu cần)
        tdtYeuCauSuaDAO.save(yeuCau);
        return "redirect:/yeucausua/list";
    }

    // Hiển thị form sửa thông tin yêu cầu sửa
    @GetMapping("/edit/{id}")
    public String editYeuCauForm(@PathVariable("id") String maYeuCau, Model model) {
        Tdt_YeuCauSua yeuCau = tdtYeuCauSuaDAO.getById(maYeuCau);
        model.addAttribute("yeuCau", yeuCau);
        return "yeucausua/edit";
    }

    // Cập nhật thông tin yêu cầu sửa với kiểm tra BindingResult
    @PostMapping("/update")
    public String updateYeuCau(@ModelAttribute("yeuCau") Tdt_YeuCauSua yeuCau, BindingResult result, Model model) {
        if(result.hasErrors()){
            System.out.println("Lỗi binding: " + result);
            return "yeucausua/edit";
        }
        tdtYeuCauSuaDAO.update(yeuCau);
        return "redirect:/yeucausua/list";
    }

    // Xóa yêu cầu sửa theo mã
    @GetMapping("/delete/{id}")
    public String deleteYeuCau(@PathVariable("id") String maYeuCau) {
        tdtYeuCauSuaDAO.delete(maYeuCau);
        return "redirect:/yeucausua/list";
    }
}
