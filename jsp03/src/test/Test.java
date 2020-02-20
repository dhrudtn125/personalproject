package test;

import org.apache.ibatis.session.SqlSessionFactory;

import sqlmap.MybatisManager;

public class Test {

	public static void main(String[] args) {
		//MybatisManager m=new MybatisManager();
		SqlSessionFactory factory=MybatisManager.getInstance();
	}

}
