package com.yjh.mapper;

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
		ProductVO product = new ProductVO();
		product.setTitle("새로 작성하는 글");
		product.setContent("새로 작성하는 내용");
		product.setWriter("newbie");

		mapper.insert(product);

		log.info("============testInsert============");
		log.info(product);
	}
	*/

	
	@Test
	public void testInsertSelectKey() {
		ProductVO product = new ProductVO();
		
		for (int i = 101; i < 151; i++) {
		
			product.setPname(i + "번째 제품");
			product.setPsort("스마트폰");
			product.setManufacture("--");
			product.setPrice((long) 999000+i);
			product.setSaleprice((long) 880000+i);
			product.setInfo("4G");
		
			mapper.insertSelectKey(product);
		}
		log.info("============testInsertSelectKey============");
		log.info(product);
	}
	
	
	/*
	@Test
	public void testRead() {
		
		ProductVO product = mapper.read(4L);
		log.info("============testRead============");
		log.info(product);
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
		ProductVO product = new ProductVO();
		product.setBno(3L);
		product.setTitle("수정된 제목");
		product.setContent("수정된 내용");
		product.setWriter("user00");
		
		int count = mapper.update(product);
				
		log.info("============testUpdate============");
		log.info("UPDATE COUNT : " + count);
	}
	*/
}
