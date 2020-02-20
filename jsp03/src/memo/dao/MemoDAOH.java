package memo.dao;

import java.util.Date;
import java.util.List;

import org.hibernate.Session;

import config.HibernateManager;
import memo.dto.MemoDTOH;

public class MemoDAOH {
	public List<MemoDTOH> listMemo(String searchkey, String search){
		//hibernate 실행 할 수 있는 새션 객체 생성
		Session session = HibernateManager.getSessionFactory().openSession();
		String sql="select idx,writer,memo,post_date from memo ";
		if(searchkey.equals("writer_memo")) {
			sql += " where writer like :search or memo like :search ";
		}else {
			sql += " where "+searchkey+" like :search ";
		}
		sql += " order by idx desc ";
		
		List list = session.createNativeQuery(sql,MemoDTOH.class).setParameter("search", "%"+search+"%").getResultList();
		//hibernate 세션 종료
		session.close();
		return list;
	}
	public void deleteMemo(int idx) {
		Session session = HibernateManager.getSessionFactory().openSession();
		//트랜젝션 시작
		session.beginTransaction();
		//삭제할 레코드 조회(select * from memo where idx=5)
		MemoDTOH dto = (MemoDTOH)session.get(MemoDTOH.class, idx);
		//삭제 (delete from memo where idx=5)
		session.delete(dto);
		//커밋
		session.getTransaction().commit();
		session.close();
		
	}
	public void insertMemo(MemoDTOH dto) {
		Session session = HibernateManager.getSessionFactory().openSession();
		session.beginTransaction();
		session.save(dto);//insert 관련 쿼리를 자동으로 생성
		session.getTransaction().commit();
		session.close();
		
	}
	public void updateMemo(MemoDTOH dto) {
		Session session = HibernateManager.getSessionFactory().openSession();
		session.beginTransaction();
		dto.setPost_date(new Date());
		session.update(dto);
		session.getTransaction().commit();
		session.close();
	}
	public MemoDTOH viewMemo(int idx) {
		Session session = HibernateManager.getSessionFactory().openSession();
		MemoDTOH dto = (MemoDTOH)session.get(MemoDTOH.class, idx);
		session.close();
		return dto;
	}
}
