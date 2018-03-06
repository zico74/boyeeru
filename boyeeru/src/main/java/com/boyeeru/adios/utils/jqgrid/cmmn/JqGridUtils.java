package com.boyeeru.adios.utils.jqgrid.cmmn;

import java.util.List;

import com.boyeeru.adios.utils.jqgrid.model.JqGrid;

public class JqGridUtils {
	/**
	 * jqGrid 페이징 세팅
	 * @param jqGridDto
	 */
	public static <T extends JqGrid> void setJqGridPage(T jqGrid) {
		jqGrid.setStartCount((jqGrid.getPage() - 1) * jqGrid.getRows() + 1);
		jqGrid.setEndCount(jqGrid.getPage() * jqGrid.getRows());
	}
	
	/**
	 * jqGrid 후처리
	 * @param jqGridVo
	 * @param data
	 * @param total
	 */
	public static <T extends JqGrid> void setPostJqGrid(T jqGrid, List<?> data, int total) {
		jqGrid.setRecords(total);

		int totalPage = total / jqGrid.getRows();

		if (total % jqGrid.getRows() > 0) {
			totalPage++;
		}

		jqGrid.setTotal(totalPage);
		jqGrid.setData(data);
	}
}
