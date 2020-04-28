package com.ja.rubato.controller.model;

import java.util.*;
import java.sql.*;
import com.ja.rubato.controller.vo.*;
import com.ja.rubato.controller.vo.BoardVo;

public class CommentDao {
	
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "SCOTT";
	private static final String PASSWORD = "TIGER";
	
	public ArrayList<CommentVo> selectAll() {
		ArrayList<CommentVo> list = new ArrayList<CommentVo>();
		
		
		String query = "SELECT * FROM fb_board_comment ORDER BY b_no DESC";
		
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
				int c_no = rs.getInt("c_no");
				int m_no = rs.getInt("m_no");
				String c_comment = rs.getString("c_comment");
				java.util.Date c_writedate = rs.getDate("c_writedate");
				
				CommentVo CommentVo = new CommentVo(c_no, m_no, c_comment, c_writedate);
				
				
				list.add(CommentVo);
			}
			
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
		
		return list;
	}
	
	public void delete(int no) {
		
		String query = "DELETE FROM fb_board_comment WHERE b_no = ?";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("java.lang.System");
			System.out.println();
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstm = conn.prepareStatement(query);
			pstm.setInt(1, no);
			
			pstm.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		} finally {
			if(pstm != null) {
				try {
					pstm.close();
				} catch(Exception e) {
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
	}
	
	public void update(int no, String comment) {
		
		String query = "UPDATE fb_comment_board SET c_comment = ?, c_content = ? WHERE c_no = ?";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			pstm = conn.prepareStatement(query);
			pstm.setInt(1, no);
			pstm.setString(2,  comment);
			
			pstm.executeUpdate();
					
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(pstm != null) {
				try {
					pstm.close();
				} catch(Exception e) {
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
	}
	
	public void insert(int m_no, String c_comment) {
		
		String query = "INSERT INTO fb_board_comment VALUES(fb_board_comment_seq.nextval, ?, ?, SYSDATE)";
				
		Connection conn = null;
		PreparedStatement pstm = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Class.forName("java.lang.System");
			System.out.println();
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			
			pstm = conn.prepareStatement(query);
			pstm.setInt(1,  m_no);
			pstm.setString(2, c_comment);
			
			
			pstm.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			if(pstm != null) {
				try {
					pstm.close();					
				} catch(Exception e) {
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
	
	public CommentVo selectByNo(int no) {
		
		CommentVo commentVo = null;
		
		String query = "SELECT * FROM fb_board_comment WHERE c_no = ?";
		
		Connection conn = null;
		PreparedStatement pstm = null;
		ResultSet rs = null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			pstm = conn.prepareStatement(query);
			pstm.setInt(1,  no);
			
			rs = pstm.executeQuery();
			
			if(rs.next()) {
				int c_no = rs.getInt("c_no");
				int m_no = rs.getInt("m_no");
				String c_comment = rs.getString("c_comment");
				java.util.Date c_writedate = rs.getDate("c_writedate");
				
				commentVo = new CommentVo(c_no, m_no, c_comment, c_writedate);
			}
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
		
		return commentVo;
	}
	
}
