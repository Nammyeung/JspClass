package com.ja.rubato.controller.model;

import java.util.*;
import java.sql.*;
import com.ja.freeboard.vo.*;
import com.ja.rubato.controller.vo.BoardVo;

public class BoardDao {
	
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
//	xe : 데이터베이스 이름.
	private static final String USER = "SCOTT";
	private static final String PASSWORD = "TIGER";
//	카디널리티의 한 줄이 value object에 Arraylist의 형태로 담김.
	
	public ArrayList<BoardVo> selectAll() {
		ArrayList<BoardVo> list = new ArrayList<BoardVo>();
//		비어있어도 리턴이 되어야 함.
	
//	Data를 받은 것을 구체화 시켜서 return
//	Select 다음 출력하는 과정
	

		String query = "SELECT * FROM fb_board ORDER BY b_no DESC";
//		작은따옴표 제외
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstm = conn.prepareStatement(query);
		
			
			rs = pstm.executeQuery();
			
			
			//로직....
			while(rs.next()) {
				int b_no = rs.getInt("b_no");
				int m_no = rs.getInt("m_no");
				String b_title = rs.getString("b_title");
				String b_content = rs.getString("b_content");
				java.util.Date b_writedate = rs.getDate("b_writedate");
//				(타입 캐스팅)
				
				BoardVo boardVo = new BoardVo(b_no, m_no, b_title, b_content, b_writedate);
				
				
				list.add(boardVo);
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
//		boardVo가 담긴 list를 리턴
		return list;
		
	}
	
	public void delete(int no) {
//		primary key 기준으로 delete
//		delete by idx
		
		String query = "DELETE FROM fb_board WHERE b_no = ?";
		
		
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
			pstm.setInt(1, no);
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
	
	public void update(int no, String title, String content) {

		String query = "UPDATE fb_board SET b_title = ? , b_content = ? WHERE b_no = ?";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");		
			
			conn = DriverManager.getConnection(URL,USER,PASSWORD);
			pstm = conn.prepareStatement(query);
			pstm.setString(1, title);
			pstm.setString(2, content);
			pstm.setInt(3, no);
			
			pstm.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {

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
				}catch(Exception e) {
					e.printStackTrace();
				}
				
			}
		}		
	}
	
	public void insert(int memberNo, String title, String content) {
String query = "INSERT INTO fb_board VALUES(fb_board_seq.nextval, ?, ?, ? , SYSDATE)";
		
		
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
			pstm.setInt(1,  memberNo);
			pstm.setString(2, title);
			pstm.setString(3,  content);
//			괄호 안의 타입 때문에 setInt를 하는 것.
			
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
	
	public BoardVo selectByNo(int no) {
		BoardVo boardVo = null;
//		변수명은 가급적 첫글자를 소문자로
		
		String query = "SELECT * FROM fb_board WHERE b_no = ?";
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
			
			
			//로직.... (데이터를 만드는)
			if(rs.next()) {
				int b_no = rs.getInt("b_no");
				//int b_no = rs.getInt(1);
				int m_no = rs.getInt("m_no");
				String b_title = rs.getString("b_title");
				String b_content = rs.getString("b_content");
				java.util.Date b_writedate = rs.getDate("b_writedate");
								
				boardVo = new BoardVo(b_no, m_no, b_title, b_content, b_writedate);
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
		
		
		
		return boardVo;
		
		
		
	}
}	
				
		
		
		