package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class UserinfoVO {
	
	private String userid;
	private String username;
	private String password;
	private String address;
	private String phone;
	private String email;
	private Date joindate;
	private Date updatedate;
}
