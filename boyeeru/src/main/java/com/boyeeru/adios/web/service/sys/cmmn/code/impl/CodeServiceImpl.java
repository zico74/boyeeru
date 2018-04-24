package com.boyeeru.adios.web.service.sys.cmmn.code.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;
import com.boyeeru.adios.web.mapper.sys.cmmn.code.CodeMapper;
import com.boyeeru.adios.web.model.sys.cmmn.code.Code;
import com.boyeeru.adios.web.model.sys.cmmn.code.TreeCode;
import com.boyeeru.adios.web.service.sys.cmmn.code.CodeService;

@Service("codeServiceImpl")
public class CodeServiceImpl implements CodeService {
	@Autowired
	private CodeMapper codeMapper;
	
	@Override
	public <T extends JqGrid> List<Code> findByCode(T jqGrid) {
		// TODO Auto-generated method stub
		return this.codeMapper.findByCode(jqGrid);
	}

	@Override
	public <T extends JqGrid> int findByCodeTotal(T jqGrid) {
		// TODO Auto-generated method stub
		return this.codeMapper.findByCodeTotal(jqGrid);
	}

	@Override
	public <T extends JqGrid> List<TreeCode> findByTreeCode(T jqGrid) {
		// TODO Auto-generated method stub
		return this.codeMapper.findByTreeCode(jqGrid);
	}

	@Override
	public <T extends JqGrid> int findByTreeCodeTotal(T jqGrid) {
		// TODO Auto-generated method stub
		return this.codeMapper.findByTreeCodeTotal(jqGrid);
	}

}
