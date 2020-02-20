package project.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;


import project.dto.ProjectCommentDTO;
import sqlmap.MybatisManager;

public class ProjectDAO {
	public List<ProjectCommentDTO> commentList(int num) {
		List<ProjectCommentDTO> list=null;
		SqlSession session=null;
		try {
			session = MybatisManager.getInstance().openSession();
			list=session.selectList("projcet.commentList", num);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session!=null) session.close();
		}
		return list;

	}

	//댓글 추가
	public void commentAdd(ProjectCommentDTO dto) {
		SqlSession session=null;
		try {
			session=MybatisManager.getInstance().openSession();
			session.insert("projcet.commentAdd", dto);
			session.commit();//auto commit 아님
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(session != null) session.close();
		}

	}
}
