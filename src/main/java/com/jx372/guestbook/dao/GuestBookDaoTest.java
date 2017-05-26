package com.jx372.guestbook.dao;

import java.util.ArrayList;
import java.util.List;

import com.jx372.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		insertTest();
//		getListTest();
		deleteTest("4");
		
	}
	public static void insertTest(){
		GuestBookDao dao = new GuestBookDao();
		GuestBookVo vo = new GuestBookVo();
		
		vo.setName("홍길동");
		vo.setMessage("잘보고 갑니다");
		vo.setPasswd("1234");
		
		dao.insert(vo);
	}
	public static void getListTest(){
		GuestBookDao dao = new GuestBookDao();
		List<GuestBookVo> list = new ArrayList<GuestBookVo>();
		list= dao.getList();
		
		for(GuestBookVo vo:list){
			System.out.println(vo.toString());
		}
		
	}
	
	public static void deleteTest(String no){
		GuestBookDao dao = new GuestBookDao();
		dao.delete(no);
	}

}
