package com.ja.rubato.controller.vo;

import java.util.Date;

public class CommentVo {
	private int c_no;
	private int m_no;
	private String c_comment;
	private Date c_writedate;
	
	public CommentVo(int c_no, int m_no, String c_comment, Date c_writedate) {
		super();
		this.c_no = c_no;
		this.m_no = m_no;
		this.c_comment = c_comment;
		this.c_writedate = c_writedate;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
	}

	public int getM_no() {
		return m_no;
	}

	public void setM_no(int m_no) {
		this.m_no = m_no;
	}

	public String getC_comment() {
		return c_comment;
	}

	public void setC_comment(String c_comment) {
		this.c_comment = c_comment;
	}

	public Date getC_writedate() {
		return c_writedate;
	}

	public void setC_writedate(Date c_writedate) {
		this.c_writedate = c_writedate;
	}
	
	
	
	
}

