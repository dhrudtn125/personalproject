package memo.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import memo.dto.MemoDTO;
import sqlmap.MybatisManager;

public class MemoDAO {
	//여기서는 List대신 ArrayList를 쓰면 에러가 난다. 
	//(mybatis 시스템상 타입을 List로 고정시켜 놨다)
	public List<MemoDTO> listMemo(){
		//mybatis 실행 객체 생성
		//SqlSession은 기존에 했던 Connection, PreparedStatement,
		//ResultSet 모두를 가지고 있다.
		//여기서 SqlSession하나를 쓰는건 context.xml에서
		//maxTotal="50" 설정 중 1개의 리소스를 이미 써버리는 것이다.
		SqlSession session = MybatisManager.getInstance().openSession();

		List<MemoDTO> list=null;
		try {
			list=session.selectList("memo.listAll");
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null)
				session.close();//mybatis 객체 닫기
		}
		return list;
	}

	public void insertMemo(MemoDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.insert("memo.insert",dto);//레코드 추가,insert메소드는 메게변수 하나만 취급
		session.commit();//수동 커밋 mybatis는 자동 커밋을 막았다.
		session.close();
	}
}
