package com.cos.daangn.domain.user;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id; // 시퀀스, auto_increment
	
	@Column(nullable = false, length = 100, unique = true) // nullable = false 무조건 값이 있어야함
	private String username;
	
	
	private String profileImage;
	
	@Column(nullable = false, length = 100) // 123456 = 해쉬(비밀번호 암호화)
	private String password;
	
	@Column(nullable = false, length = 100)
	private String email;
	
	@Column(nullable = false, length = 100)
	private String address;
	
	@Enumerated(EnumType.STRING) // 기본이 INT 인데 varchar로 바뀜
	private RoleType role; // ADMIN, USER 값이 강제된다.
	
	@CreationTimestamp
	private Timestamp createDate; // sql
}
