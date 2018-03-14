package com.mballem.livro.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

/**
 * Created by Ballem on 01/03/2017.
 */
@Controller
public class HomeController {

	@GetMapping({"/", "/{tenantId}"})
	public String index() {

		return "template/tenancy";
	}
}
