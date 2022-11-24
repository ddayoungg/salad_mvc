package kr.co.salad.dao.handler;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MyBatisHandler {
	
	private static MyBatisHandler mbh;
	private static SqlSessionFactory ssf;
	
	
	private MyBatisHandler() {
		
	}

	public static MyBatisHandler getInstance() {
		if(mbh==null) {
			mbh=new MyBatisHandler();
		}
		return mbh;
	}
	
	private static SqlSessionFactory getSessionFactory() throws IOException{
		if(ssf==null) {
			String path="kr/co/salad/dao/config/mybatis-config.xml"; 
			//1.설정용 XML과 연결
			 Reader reader = Resources.getResourceAsReader(path);
				
			//2. MyBatis Framework을 생성			
			//3.Mybatis framework 할당
			ssf=new SqlSessionFactoryBuilder().build(reader);
			if(reader!=null) {
				reader.close();
			}
		}
		return ssf;
	}
	
	public SqlSession getHandler() {
		SqlSession session=null;
		
		try {
			session=getSessionFactory().openSession();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return session;
	}
	
	public void closeHandler(SqlSession session) {
		session.close();
	}
	
}
