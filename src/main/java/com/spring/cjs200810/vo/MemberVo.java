package com.spring.cjs200810.vo;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MemberVo {
	private int idx;
	private String id;
	private String pw;
	private String nick;
	private String email;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date joinDate;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date lastLogin;
	private int level;
	private int activation;
}
