package com.java.reply.dao;

import java.util.List;

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
			//				mapper에서 사용되는 id, 넘겨줄 값
			check=session.insert("replyWrite", replyDto);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}
	
	public List<ReplyDto> getList() {
		List<ReplyDto> replyList=null;
		
		try {
			session=sqlSessionFactory.openSession();
			replyList=session.selectList("replyList");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return replyList;
	}
	
	// 새로운 글을 얻기 위해 db의 숫자를 가져온다.
	public int getBunho() {
		int bunho=0;
		
		try {
			session=sqlSessionFactory.openSession();
			bunho=session.selectOne("replyGetBunho");
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return bunho;
		
	}
	
	public int delete(int bunho) {
		int check=0;
		
		try {
			session=sqlSessionFactory.openSession();
			check=session.delete("replyDelete", bunho);
			session.commit();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return check;
	}
	
	public ReplyDto select(int bunho) {
		ReplyDto replyDto = null;
		
		try {
			session=sqlSessionFactory.openSession();
			replyDto = session.selectOne("replySelect", bunho);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		return replyDto;
	}
}
