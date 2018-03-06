package com.boyeeru.adios.web.mapper.sys.cmmn.code;

import java.util.List;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.model.sys.cmmn.code.Code;

public interface CodeMapper {
	public <T extends JqGrid> List<Code> findByCode(T jqGrid);
	public <T extends JqGrid> int findByCodeTotal(T jqGrid);
}
