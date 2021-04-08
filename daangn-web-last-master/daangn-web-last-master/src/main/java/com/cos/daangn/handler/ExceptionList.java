package com.cos.daangn.handler;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;
import com.cos.daangn.domain.Exception.MyError;

import lombok.Data;

@Data
@Component
public class ExceptionList {
	public List<MyError> data = new ArrayList<>();

	public void addExceptionList(String str) {
		data.add(new MyError().builder().msg(str).build());
	}

	public void clearList() {
		data.clear();
	}
}
