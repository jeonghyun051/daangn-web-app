package com.cos.daangn.handler;

import java.util.List;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import com.cos.daangn.domain.Exception.MyError;
import com.cos.daangn.domain.Exception.MyErrorRepository;
import com.cos.daangn.service.MyExceptionService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Component
public class MyBatch {

	private final ExceptionList exceptionList;
	private final MyExceptionService myExceptionService;
	
	//*60*10
	@Scheduled(fixedDelay = 1000*60*30) // Cron 정기적 실행
	public void excute() {
		List<MyError> data = exceptionList.getData();
		myExceptionService.전체저장(data);
		exceptionList.clearList();
	}
}