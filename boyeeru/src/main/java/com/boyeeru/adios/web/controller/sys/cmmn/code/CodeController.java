package com.boyeeru.adios.web.controller.sys.cmmn.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boyeeru.adios.utils.cmmn.Utils;
import com.boyeeru.adios.utils.jqgrid.cmmn.JqGridUtils;
import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.model.sys.cmmn.code.Code;
import com.boyeeru.adios.web.model.sys.cmmn.code.TreeCode;
import com.boyeeru.adios.web.service.sys.cmmn.code.CodeService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class CodeController {
	@Autowired
	private CodeService codeService;
	
	@RequestMapping("/sys/cmmn/code")
	public ModelAndView cmmnCode() {
		log.info("before");
		ModelAndView mav = Utils.getModelAndView("sys/cmmn/code/code");
		log.info("after");
		return mav;
	}
	
	@RequestMapping("/sys/cmmn/codeJqGrid")
	public JqGrid codeJqGrid(@ModelAttribute JqGrid jqGrid) {
		log.info("############## {}", jqGrid.toString());
		List<Code> data = this.codeService.findByCode(jqGrid);
		int total = this.codeService.findByCodeTotal(jqGrid);
		JqGridUtils.setPostJqGrid(jqGrid, data, total);
		
		return jqGrid;
	}
	
	@RequestMapping("/sys/cmmn/treeCodeJqGrid")
	public JqGrid treeCodeJqGrid(@ModelAttribute JqGrid jqGrid) {
		List<TreeCode> data = this.codeService.findByTreeCode(jqGrid);
		int total = this.codeService.findByTreeCodeTotal(jqGrid);
		
		log.info("{}", data.size());
		log.info("{}", data);
		
		JqGridUtils.setPostJqGrid(jqGrid, data, total);
		
		return jqGrid;
	}
	
	@RequestMapping("/sys/cmmn/code/add")
	public ModelAndView add() {
		ModelAndView mav = Utils.getModelAndView("sys/cmmn/code/codeAdd");
		
		return mav;
	}
}
