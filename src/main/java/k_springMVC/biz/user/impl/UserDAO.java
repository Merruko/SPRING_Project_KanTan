package k_springMVC.biz.user.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import k_springMVC.biz.common.JDBCUtil;
import k_springMVC.biz.user.UserVO;

@Repository("userDAO")
public class UserDAO {
	
	private Connection conn = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	private final String USER_GET = "SELECT * FROM k_member WHERE mId=? AND mPwd=?";
	private final String USER_UPDATE = "UPDATE k_member SET mBirth=?, mEmail=?, mPhone WHERE mId=?";
	
	// 회원 등록
	public UserVO getUser(UserVO vo) {
		UserVO user = null;
		try {
			System.out.println("getUser() 실행");
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_GET);
			stmt.setString(1, vo.getId());
			stmt.setString(2, vo.getPassword());
			rs = stmt.executeQuery();
			if (rs.next()) {
				user = new UserVO();
				user.setId(rs.getString("mId"));
				user.setPassword(rs.getString("mPwd"));
				user.setName(rs.getString("mName"));
				user.setGender(rs.getString("mGender"));
				user.setBirth(rs.getString("mBirth"));
				user.setEmail(rs.getString("mEmail"));
				user.setPhone(rs.getString("mPhone"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(rs, stmt, conn);
		}
		return user;
	}
	
	// 회원 수정
	public void updateUser(UserVO vo) {
		System.out.println("updateUser() 실행");
		try {
			conn = JDBCUtil.getConnection();
			stmt = conn.prepareStatement(USER_UPDATE);
			stmt.setString(1, vo.getBirth());
			stmt.setString(2, vo.getEmail());
			stmt.setString(3, vo.getPhone());
			stmt.setString(4, vo.getId());
			stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(stmt, conn);
		}
	}
	
}