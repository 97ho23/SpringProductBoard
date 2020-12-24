package com.yjh.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductMapperTests {

	@Setter(onMethod_ = @Autowired)
	private ProductMapper mapper;

	 
	@Test
	public void testGetList() {
		log.info("============testGetList============");
		mapper.getList().forEach(product -> log.info(product));
	}
	
	
	/*
	@Test
	public void testInsert() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");
		board.setWriter("newbie");

		mapper.insert(board);

		log.info("============testInsert============");
		log.info(board);
	}
	*/

	/*
	@Test
	public void testInsertSelectKey() {
		BoardVO board = new BoardVO();
		board.setTitle("새로 작성하는 글 SelectKey");
		board.setContent("새로 작성하는 내용 SelectKey");
		board.setWriter("newbie");

		mapper.insertSelectKey(board);

		log.info("============testInsertSelectKey============");
		log.info(board);
	}
	*/
	
	/*
	@Test
	public void testRead() {
		
		BoardVO board = mapper.read(4L);
		log.info("============testRead============");
		log.info(board);
	}
	*/
	
	/*
	@Test
	public void testDelete() {
		log.info("============testDelete============");
		log.info("DELETE COUNT : " + mapper.delete(9L));
	}
	*/
	
	/*
	@Test
	public void testUpdate() {
		BoardVO board = new BoardVO();
		board.setBno(3L);
		board.setTitle("수정된 제목");
		board.setContent("수정된 내용");
		board.setWriter("user00");
		
		int count = mapper.update(board);
				
		log.info("============testUpdate============");
		log.info("UPDATE COUNT : " + count);
	}
	*/
}
