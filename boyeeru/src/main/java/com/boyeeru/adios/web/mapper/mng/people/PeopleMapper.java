package com.boyeeru.adios.web.mapper.mng.people;

import java.util.List;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.model.mng.people.People;

public interface PeopleMapper {
	public <T extends JqGrid> List<People> findByPeople(T jqGrid);
	public <T extends JqGrid> int findByPeopleTotal(T jqGrid);
}
