package com.naver.shopping.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HomeController {
    @GetMapping("")
    public String home() {
        // 연습대상
        // 로그아웃, 로그인
        // 게시판
        return "Hello";
    }
}
