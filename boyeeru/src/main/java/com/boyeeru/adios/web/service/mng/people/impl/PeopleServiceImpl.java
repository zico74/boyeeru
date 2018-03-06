package com.boyeeru.adios.web.service.mng.people.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.mapper.mng.people.PeopleMapper;
import com.boyeeru.adios.web.model.mng.people.People;
import com.boyeeru.adios.web.service.mng.people.PeopleService;

import lombok.extern.slf4j.Slf4j;

@Service("peopleServiceImpl")
@Slf4j
public class PeopleServiceImpl implements PeopleService {
	@Autowired
	private PeopleMapper peopleMapper;
	
	@Override
	public <T extends JqGrid> List<People> findByPeople(T jqGrid) {
		// TODO Auto-generated method stub
		log.info("zzzzzzzzzz");
		return this.peopleMapper.findByPeople(jqGrid);
	}

	@Override
	public <T extends JqGrid> int findByPeopleTotal(T jqGrid) {
		// TODO Auto-generated method stub
		return this.peopleMapper.findByPeopleTotal(jqGrid);
	}

}
