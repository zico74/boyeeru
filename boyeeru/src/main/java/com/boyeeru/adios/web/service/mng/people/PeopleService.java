package com.boyeeru.adios.web.service.mng.people;

import java.util.List;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.model.mng.people.People;

public interface PeopleService {
	public <T extends JqGrid> List<People> findByPeople(T jqGrid);
	public <T extends JqGrid> int findByPeopleTotal(T jqGrid);
}
