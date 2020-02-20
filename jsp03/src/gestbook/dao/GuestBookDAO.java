package guestbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import gestbook.dto.GuestBookDTO;
import sqlmap.MybatisManager;

public class GuestBookDAO {
	public List<GuestBookDTO> getList(){
		//mybatis 실행 객체
		SqlSession session=MybatisManager.getInstance().openSession();
		List<GuestBookDTO> list=session.selectList("gbList");
		//selectList("네임스페이스.아이디")-네임스페이스는 생략가능
		session.close();
		return list;
	}
}
