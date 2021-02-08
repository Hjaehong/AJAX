package com.java.reply.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.java.myBatis.SqlManager;
import com.java.reply.dto.ReplyDto;

public class ReplyDao {
	private static SqlSessionFactory sqlSessionFactory = SqlManager.getInstacne();
	private SqlSession session;
	
	private static ReplyDao instance = new ReplyDao();
	public static ReplyDao getInstance() {
		return instance;
	}
	
	public int insert(ReplyDto replyDto) {
		int check=0;
		
		try {
			session=sqlSessionFactory.openSession();
			check=session.insert("replyWrite", replyDto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}
	
}
