package org.zerock.domain;

import java.util.Date;

import lombok.Data;

@Data
public class InquiryVO {
	private int inquirynum;
	private String userid;
	private int adminnum;
	private String content;
	private Date inquirydate;
	private String answer;
	private Date answerdate;
}
