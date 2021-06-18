package com.toymarktet.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.toymarket.utils.MybatisUtils;
import com.toymarket.vo.Products;

public class ProductDao {

private SqlSessionFactory sqlSessionFactory;
	
	private static ProductDao instance = new ProductDao();
	private ProductDao() {
		this.sqlSessionFactory = MybatisUtils.getSqlSessionFactory();
	}
	public static ProductDao getInstance() {
		return instance; 
	}
	
	public List<Products> getAllProducts() {
		SqlSession session = sqlSessionFactory.openSession();
		List<Products> products = session.selectList("getAllProducts");
		session.close();
		
		return products;
	}
}
