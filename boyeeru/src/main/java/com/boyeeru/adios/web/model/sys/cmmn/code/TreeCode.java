package com.boyeeru.adios.web.model.sys.cmmn.code;

import lombok.Data;

@Data
public class TreeCode {
	private String groupCodeId;
	private String codeId;
	private String groupCodeNm;
	private String codeNm;
	private String sortOrdr;
	private String parntsGroupCodeId;
	private String parntsCodeId;
	private String estnAtrb1;
	private String estnAtrb2;
	private String useAt;
	private String regNm;
	private String rgsde;
	private String updde;
	private String level;
	private String isLeaf;
	private String isExpanded;
}
