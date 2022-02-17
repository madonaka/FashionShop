package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class SalesVO {
	
	private String salesnum;
	private String ordernum;
	private int salesprice;
	private Date orderdate;
	private Date orderupdatedate; 

}
