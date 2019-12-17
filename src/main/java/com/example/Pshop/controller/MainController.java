package com.example.Pshop.controller;

import com.example.Pshop.repos.ProductRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class MainController {
    @Autowired
    private ProductRepo productRepo;

    @GetMapping
    public String index(Model model){
        return "index";
    }

    @GetMapping("main")
    public String main(Model model){

        return "main";
    }


}


























