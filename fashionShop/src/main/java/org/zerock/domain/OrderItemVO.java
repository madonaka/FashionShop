package org.zerock.domain;

import lombok.Data;

@Data
public class OrderItemVO {
	
	private String ordernum;
	private String productnum;
	private int ordercnt;
	private int orderprice;
	
}
