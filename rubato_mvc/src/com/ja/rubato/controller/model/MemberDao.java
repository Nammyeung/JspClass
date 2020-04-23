package com.ja.rubato.controller.model;

import java.sql.*;
import java.util.*;

import com.ja.freeboard.vo.MemberVo;

// ValueObject
// DTO = VO : 데이터의 형태
// Data Transfer Object
public class MemberDao {
	
// jdbc, java database connectivity
// 자바 응용프로그램(콘솔, 웹, 모바일 등)과 데이터베이스 시스템(오라클,MySQL 등)간의 연결을 시켜주는 역할.
// 잠초 : https://sas-study.tistory.com/116
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
//	xe : 데이터베이스 이름.
	private static final String USER = "SCOTT";
	private static final String PASSWORD = "TIGER";
	
	
		
	public void insert(String m_id, String m_pw, String m_nick, String m_phone) {
		// String을 이용
		// Value Object를 받은 다음에 처리
		
		String query = "INSERT INTO fb_member VALUES(fb_member_seq.nextval,?,?,?,?,SYSDATE)";
		
		
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
//			Spring framework에서 MyBatis에서는 class.forname을 지정하는 불필요한 절차 없이 query만 작성하고 데이터에 접근할 수 있도록 효율성을 증가시킴
			// 동적으로 한 번 로드는 해야(static으로 뭔가가 있다.)
			// Oracle 클래스는 사용한 적이 없음(코드 상에서)
//			ex : oracle.jdbc.driver.OracleDriver d;
//			Class.forName("java.lang.System");
			// system 클래스를 동적으로 로드하겠다.
			System.out.println();
			
//			static에 있는 정보를 끄집어 써야함.
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
//			TCP/IP 연동
			pstm = conn.prepareStatement(query); // 이걸 안쓰면 작은 따옴표를 넣을지 안넣을지 고민하는데 prepare를 쓰면 효율성 up
			pstm.setString(1, m_id);
			pstm.setString(2, m_pw);
			pstm.setString(3, m_nick);
			pstm.setString(4, m_phone);	
//			자동으로 물음표에 값을 넣어줌.
			
			pstm.executeUpdate();
//			excute를 할 때 쿼리를 안넣음.
//			createStatement(x)
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(pstm != null) {
				try {
					pstm.close();
				}catch(Exception e){
					e.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			
			
		}
		
	}
	
//	Data를 받은 것을 구체화 시켜서 return
//	Select 다음 출력하는 과정
	
	public com.ja.rubato.controller.vo.MemberVo selectByIdAndPw(String id, String pw) {
//		일관성이 유지되어야? (m_id? 그냥 id?)
		com.ja.rubato.controller.vo.MemberVo memberVo = null;
		
		String query = "SELECT * FROM fb_member WHERE m_id = ? AND m_pw = ?";
//		작은따옴표 제외
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstm = conn.prepareStatement(query);
			pstm.setString(1, id);
			pstm.setString(2, pw);
			
			rs = pstm.executeQuery();
			
			
			//로직....
			if(rs.next()) {
				int m_no = rs.getInt("m_no");
				String m_id = rs.getString("m_id");
				String m_pw = rs.getString("m_pw");
				String m_nick = rs.getString("m_nick");
				String m_phone = rs.getString("m_phone");
				java.util.Date m_joindate = rs.getDate("m_joindate"); // joindate : 칼럼 명과 등일해야
//				다형성 적용
//				DATE : 내부구조(LONG타입 & 숫자)를 파싱
//				Date 아닌 java.util.Date
				
				
				memberVo = new com.ja.rubato.controller.vo.MemberVo(m_no, m_id, m_pw, m_nick, m_phone, m_joindate);
				
				
				
			}
			
			
			
//			close 하는 과정
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(pstm != null) {
				try {
					pstm.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
		}
				
		return memberVo;
		
	}
	
	public com.ja.rubato.controller.vo.MemberVo selectByNo(int no) {
		com.ja.rubato.controller.vo.MemberVo memberVo = null;
		
		String query = "SELECT * FROM fb_member WHERE m_no = ?";
//		작은따옴표 제외
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstm = conn.prepareStatement(query);
			pstm.setInt(1, no);
			rs = pstm.executeQuery();
			
			
			//로직....
			if(rs.next()) {
				int m_no = rs.getInt("m_no");
				String m_id = rs.getString("m_id");
				String m_pw = rs.getString("m_pw");
				String m_nick = rs.getString("m_nick");
				String m_phone = rs.getString("m_phone");
				java.util.Date m_joindate = rs.getDate("m_joindate"); // joindate : 칼럼 명과 등일해야
//				다형성 적용
//				DATE : 내부구조(LONG타입 & 숫자)를 파싱
//				Date 아닌 java.util.Date
				
				
				memberVo = new com.ja.rubato.controller.vo.MemberVo(m_no, m_id, m_pw, m_nick, m_phone, m_joindate);
				
				
				
			}
			
			
			
//			close 하는 과정
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			if(rs != null) {
				try {
					rs.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(pstm != null) {
				try {
					pstm.close();
				}catch(Exception e) {
					e.printStackTrace();
				}
			}
			
			if(conn != null) {
				try {
					conn.close();
				} catch(Exception e) {
					e.printStackTrace();
				}
			}
			
		}
		
		return memberVo;	
		
	}
	
}
