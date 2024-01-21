package com.dsjh.btd.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class mainPageController {

    @GetMapping("/mainPage")
    public String mainPage() {
        return "mainPage";
    }
}
