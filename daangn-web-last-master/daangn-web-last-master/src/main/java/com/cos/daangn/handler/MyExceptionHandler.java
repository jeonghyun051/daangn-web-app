package com.cos.daangn.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestController;

import com.cos.daangn.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@ControllerAdvice
@RestController
public class MyExceptionHandler {
	private final ExceptionList exceptionList;
	
	@ExceptionHandler(value = Exception.class)
	public CMRespDto<?> hello(Exception e){
		exceptionList.addExceptionList(e.getMessage());
		return new CMRespDto<>(-1,"오류발생");
	}
	
}