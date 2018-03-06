package com.boyeeru.adios.utils.jqgrid.model;

import java.util.List;

import lombok.Data;

@Data
public class JqGrid {
	private boolean _search;
	private String nd;
	private int rows;
	private int page;
	private String sidx;
	private String sord;
	private int startCount;
	private int endCount;
	
	private int total;
	private int records;
	private List<?> data;
}
