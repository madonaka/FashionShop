package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class StrockVO {
	
	private String stocknum;
	private String productnum;
	private int stockcnt;
	private String warehouse;
	private Date stockdate;
	private Date stockupdatedate;
}
