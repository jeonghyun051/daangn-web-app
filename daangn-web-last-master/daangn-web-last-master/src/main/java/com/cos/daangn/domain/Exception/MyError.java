package com.cos.daangn.domain.Exception;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class MyError {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id; // id
	
	private String msg;

}
