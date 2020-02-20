package memo.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.hibernate.annotations.CreationTimestamp;

@Entity//데이터 베이스의 객체와 자바객체를 매핑 해줌
@Table(name ="memo")//memo table 과 연동 (매핑)
public class MemoDTOH {
	@Id //primary key
	@GeneratedValue(strategy = GenerationType.AUTO)//글번호 자동 생성
	//DBMS 에 비종속 적이라 오라클 마이에스큐엘 용 시퀀스등 신경 안 써도 됨.
	@Column(name="idx")
	private int idx;
	@Column(name="writer")
	private String writer;
	@Column(name="memo")
	private String memo;
	@CreationTimestamp
	@Temporal(TemporalType.TIMESTAMP)
	@Column(name="post_date")
	private Date post_date;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public Date getPost_date() {
		return post_date;
	}
	public void setPost_date(Date post_Date) {
		this.post_date = post_Date;
	}
	@Override
	public String toString() {
		return "MemoDTOH [idx=" + idx + ", writer=" + writer + ", memo=" + memo + ", post_Date=" + post_date + "]";
	}
	public MemoDTOH() {
		
	}
	public MemoDTOH(String writer, String memo) {
		super();
		this.writer = writer;
		this.memo = memo;
	}
	
}
