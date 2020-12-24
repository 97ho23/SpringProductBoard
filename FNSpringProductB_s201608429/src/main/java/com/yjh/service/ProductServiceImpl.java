package com.yjh.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yjh.domain.ProductVO;
import com.yjh.mapper.ProductMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ProductServiceImpl implements ProductService {

	private ProductMapper mapper;

	@Override
	public void register(ProductVO board) {
		log.info("ProductServic register ......................");
		mapper.insertSelectKey(board);
		log.info("ProductServic register ......................");
	}

	@Override
	public ProductVO get(Long bno) {
		log.info("ProductServic get ......................");
		return mapper.read(bno);
	}

	@Override
	public boolean modify(ProductVO board) {
		log.info("ProductService modify ......................");
		int cnt = mapper.update(board);
		log.info("ProductService modify ......................");
		if (cnt >= 0)
			return true;
		else
			return false;
	}

	@Override
	public boolean remove(Long bno) {
		log.info("ProductService remove ......................");
		int cnt = mapper.delete(bno);
		log.info("ProductService remove ......................");
		if (cnt >= 0)
			return true;
		else
			return false;
	}

	@Override
	public List<ProductVO> getList() {
		log.info("ProductService getList ......................");
		return mapper.getList();
	}

}
