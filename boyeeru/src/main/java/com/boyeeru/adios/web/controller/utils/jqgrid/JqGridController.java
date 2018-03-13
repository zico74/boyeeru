package com.boyeeru.adios.web.controller.utils.jqgrid;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boyeeru.adios.utils.cmmn.Utils;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class JqGridController {

	@RequestMapping("/utils/jqgrid/normal")
	public ModelAndView normal() {
		ModelAndView mav = Utils.getModelAndView("utils/jqgrid/normal");
		
		return mav;
	}
}
