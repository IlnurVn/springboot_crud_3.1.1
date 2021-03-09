package com.vish.springboot.crud.springboot_crud.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AppController {

    @GetMapping("/")
    public String showFirstView() {

        return "hello";
    }

    @GetMapping("/employees")
    public String showHome() {
        return "home";
    }

}
