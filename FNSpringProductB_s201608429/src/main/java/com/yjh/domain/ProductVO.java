package com.yjh.domain;

import java.util.Date;

import lombok.Data;

@Data
public class ProductVO {
	
	private Long pid;
	private String pname;
	private String psort;
	private String manufacture;
	private Long price;
	private Long saleprice;
	private String info;
	private Date regdate;
	private Date updatedate;
}