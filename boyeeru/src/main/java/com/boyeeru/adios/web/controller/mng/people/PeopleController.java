package com.boyeeru.adios.web.controller.mng.people;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.boyeeru.adios.utils.cmmn.Utils;
import com.boyeeru.adios.utils.jqgrid.cmmn.JqGridUtils;
import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.model.mng.people.People;
import com.boyeeru.adios.web.service.mng.people.PeopleService;

import lombok.extern.slf4j.Slf4j;

@RestController
@Slf4j
public class PeopleController {
	@Autowired
	private PeopleService peopleService;
	
	@RequestMapping("/mng/people")
	public ModelAndView people() {
		ModelAndView mav = Utils.getModelAndView("mng/people/people");
		
		return mav;
	}
	
	@RequestMapping("/mng/peopleJqGrid")
	public JqGrid peopleJqGrid(@ModelAttribute JqGrid jqGrid) {
		log.info("#2 ==> [{}]", jqGrid.toString());
		List<People> data = this.peopleService.findByPeople(jqGrid);
		int total = this.peopleService.findByPeopleTotal(jqGrid);
		JqGridUtils.setPostJqGrid(jqGrid, data, total);
		return jqGrid;
	}
}
