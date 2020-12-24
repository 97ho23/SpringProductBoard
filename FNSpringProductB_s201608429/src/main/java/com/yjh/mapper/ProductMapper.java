package com.yjh.mapper;

import java.util.List;

import com.yjh.domain.ProductVO;

public interface ProductMapper {

	// @Select("select * from tbl_product where pid > 0")
	public List<ProductVO> getList();

	public ProductVO read(Long pid);

	public void insert(ProductVO product);

	public void insertSelectKey(ProductVO product);

	public int update(ProductVO product);

	public int delete(Long pid);

}
