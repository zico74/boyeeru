package com.boyeeru.adios.web.model.sys.cmmn.code;

import lombok.Data;

@Data
public class Code {
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
	
	// grid info
	private String info;
}
