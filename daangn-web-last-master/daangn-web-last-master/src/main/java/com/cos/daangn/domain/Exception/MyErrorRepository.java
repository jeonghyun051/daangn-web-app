package com.cos.daangn.domain.Exception;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface MyErrorRepository extends JpaRepository<MyError, Long>{

	//void saveAll(List<String> exList);

}
