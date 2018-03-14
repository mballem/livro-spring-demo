package com.mballem.livro.web.controller;

import com.mballem.livro.entity.Contato;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by Ballem on 27/02/2017.
 */
@Controller
@RequestMapping("/{tenantId}")
public class LoginController {

    @GetMapping("/login")
    public String templateLogin() {

        return "template/login";
    }

    @GetMapping("/contato")
    public String hello(@ModelAttribute Contato contato) {

        return "template/contato";
    }
}
