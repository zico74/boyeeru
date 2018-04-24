package com.boyeeru.adios.web.service.sys.cmmn.code;

import java.util.List;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.model.sys.cmmn.code.Code;
import com.boyeeru.adios.web.model.sys.cmmn.code.TreeCode;

public interface CodeService {
	public <T extends JqGrid> List<Code> findByCode(T jqGrid);
	public <T extends JqGrid> int findByCodeTotal(T jqGrid);
	
	public <T extends JqGrid> List<TreeCode> findByTreeCode(T jqGrid);
	public <T extends JqGrid> int findByTreeCodeTotal(T jqGrid);
}
