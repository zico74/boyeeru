package com.boyeeru.adios.web.controller.home;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boyeeru.adios.utils.cmmn.Utils;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class HomeController {

	@RequestMapping("/")
	public ModelAndView home() {
		return Utils.getModelAndView("home/home");
	}
}
