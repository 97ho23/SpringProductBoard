package com.yjh.service;

import java.util.List;
import com.yjh.domain.ProductVO;

public interface ProductService {

	public List<ProductVO> getList();

	public ProductVO get(Long pid);

	public void register(ProductVO product);

	public boolean modify(ProductVO product);

	public boolean remove(Long pid);

}
