package emp;

import java.sql.Connection;
import java.sql.PreparedStatement;

import config.DB;

public class EmpDAO {
	
	
	
	
	public void insert_batch() {
		Connection conn= null;
		PreparedStatement pstmt = null;
		try {
			conn = DB.getConn();
			conn.setAutoCommit(false);//오토커밋 해제
			String sql = "insert into emp2(empno,ename,deptno) values(?,?,?)";
			pstmt=conn.prepareStatement(sql);
			long before = System.currentTimeMillis();
			for(int i=200001; i<=300000;i++) {
				pstmt.setInt(1, i);
				pstmt.setString(2, "kim"+i);
				pstmt.setInt(3, i);
				pstmt.addBatch();//일괄처리 작업
				}
			pstmt.executeBatch();//일괄처리 작업 실행 
			long after=System.currentTimeMillis();//실행후시간처리
			conn.commit();//수동 커밋
			conn.setAutoCommit(true);
			System.out.println("실행시간: "+(after-before));
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if(conn!=null) conn.rollback();//롤백
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if(pstmt!=null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
	
	public void insert() {
		Connection conn= null;
		PreparedStatement pstmt = null;
		try {
			conn = DB.getConn();
			conn.setAutoCommit(false);//오토커밋 해제
			long before = System.currentTimeMillis();
			for(int i=0;i<=100000;i++) {
				String sql = "insert into emp2(empno,ename,deptno) values(?,?,?)";
				pstmt= conn.prepareStatement(sql);
				pstmt.setInt(1, i);
				pstmt.setString(2, "kim"+i);
				pstmt.setInt(3, i);
				pstmt.executeUpdate();
				pstmt.close();
			}
			long after=System.currentTimeMillis();//실행후시간처리
			conn.commit();//수동 커밋
			conn.setAutoCommit(true);
			//다음작업을 위해 auto commit으로 설정
		} catch (Exception e) {
			e.printStackTrace();
			try {
				if(conn!=null) conn.rollback();//롤백
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		} finally {
			try {
				if(pstmt!=null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}
