package com.yjh.service;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.yjh.domain.ProductVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ProductServiceTests {

	@Setter(onMethod_ = { @Autowired })
	private ProductService service;
	
	/*
	@Test
	public void testGetList() {
		log.info("ProductServiceTests testGetList...............................");
		service.getList().forEach(board -> log.info(board));
	}
	*/

	/*
	@Test
	public void testRegister() {
		log.info("ProductServiceTests testRegister...............................");
		ProductVO board = new ProductVO();
		board.setTitle("새로 작성하는 글");
		board.setContent("새로 작성하는 내용");;
		board.setWriter("newbie");
		
		service.register(board);

		log.info("생성된 게시물의 번호 : " + board.getBno());
	}
	*/
	
	
	@Test
	public void testGet() {
		log.info("ProductServiceTests testGet...............................");
		log.info(service.get(1L));
	}
	
	
	/*
	@Test
	public void testDelete() {
		log.info("ProductServiceTests testDelete...............................");
		log.info(service.remove(3L));
	}
	*/
	
	/*
	@Test
	public void testUpdate() {
		ProductVO board = service.get(1L);
		
		if (board == null)
			return;
		
		log.info("ProductServiceTests testUpdate...............................");
		log.info(service.modify(board));
	}
	*/
	
}
