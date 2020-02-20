package guestbook.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import guestbook.dto.GuestBookDTO;
import sqlmap.MybatisManager;

public class GuestBookDAO {
	public List<GuestBookDTO> getList(){
		//mybatis 실행 객체
		SqlSession session=MybatisManager.getInstance().openSession();
		List<GuestBookDTO> list=session.selectList("gbList");
		//selectList("네임스페이스.아이디")-네임스페이스는 생략가능
		for(GuestBookDTO dto : list) {
			String content = dto.getContent();
			content = content.replace("<", "&lt");
			content = content.replace(">", "%gt");
			content = content.replace("\n","<br");
			content=content.replace("  ", "&nbsp;&nbsp;");
			dto.setContent(content);
		}
		session.close();
		return list;
	}

	public void gbInsert(GuestBookDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.insert("gbInsert",dto);
		session.commit();
		session.close();
		
	}

	public boolean passwdCheck(int idx, String passwd) {
		boolean result = false;
		SqlSession session = MybatisManager.getInstance().openSession();
		GuestBookDTO dto = new GuestBookDTO();
		dto.setIdx(idx);
		dto.setPasswd(passwd);
		//레코드가 1개가 리턴될 경우 selectOne
		int count = session.selectOne("passwdCheck",dto);
		session.close();
		if(count == 1 ) {
			result = true;
		}
		return false;
	}
	//게시물의 상세 정보 확인 (idx: 게시물 번호 
	public GuestBookDTO gbDetail(int idx) {
		GuestBookDTO dto = new GuestBookDTO();
		SqlSession session = MybatisManager.getInstance().openSession();
		dto= session.selectOne("gbDetail",idx);
		session.close();
		return dto;
		
	}
	//게시물 수정
	public void gbUpdate(GuestBookDTO dto) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.update("guestbook.gbUpdate",dto);
		session.commit();
		session.close();
	}

	public void gbDelete(int idx) {
		SqlSession session = MybatisManager.getInstance().openSession();
		session.delete("guestbook.gbDelete",idx);
		session.commit();
		session.close();
	}
}
