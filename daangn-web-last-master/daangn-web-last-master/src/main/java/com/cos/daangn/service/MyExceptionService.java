package com.cos.daangn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cos.daangn.domain.Exception.MyError;
import com.cos.daangn.domain.Exception.MyErrorRepository;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class MyExceptionService {
	private final MyErrorRepository errorRepository;

	public void 전체저장(List<MyError> data) {
		errorRepository.saveAll(data);
	}

}