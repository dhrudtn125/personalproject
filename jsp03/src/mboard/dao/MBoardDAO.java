package mboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import project.dto.ProjectDTO;
import sqlmap.MybatisManager;

public class MBoardDAO {
	public List<ProjectDTO> commentList(int num) {
		List<ProjectDTO> list=null;
		SqlSession session=null;
		try {
			session = MybatisManager.getInstance().openSession();
			list=session.selectList("project.commentList", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return list;

	}

	//댓글 추가
	public void commentAdd(ProjectDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("project.commentAdd", dto);
			session.commit();//auto commit 아님
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}

	}
}
