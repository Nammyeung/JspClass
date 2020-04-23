package com.ja.rubato.controller.vo;

public class ContentDataVo {
	private MemberVo memberVo;
	private BoardVo boardVo;
	//	객체 안에 객체가 있는 형태(객체의 참조 주소를 받는)
	public ContentDataVo() {
		super();
	}
	public ContentDataVo(MemberVo memberVo, BoardVo boardVo) {
		super();
		this.memberVo = memberVo;
		this.boardVo = boardVo;
	}
	public MemberVo getMemberVo() {
		return memberVo;
	}
	public void setMemberVo(MemberVo memberVo) {
		this.memberVo = memberVo;
	}
	public BoardVo getBoardVo() {
		return boardVo;
	}
	public void setBoardVo(BoardVo boardVo) {
		this.boardVo = boardVo;
	}
	
}
