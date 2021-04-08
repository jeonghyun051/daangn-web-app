package com.cos.daangn.domain.post;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;

import org.hibernate.annotations.ColumnDefault;
import org.hibernate.annotations.CreationTimestamp;

import com.cos.daangn.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Builder
@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class Post {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id; // id
	
	@Column(nullable = false, length = 100)
	private String title; // 제목
	
	@Lob
	private String content; // 내용
	
	@ColumnDefault("0") 
	private int price; // 가격
	
	@Column(nullable = false, length = 100)
	private String imgsrc; // 이미지 사진
	
	@ColumnDefault("0") // default값 0이 들어간다.
	private int favorite; // 관심수
	
	@ColumnDefault("0")
	private int count; //조회수 
	
	@ManyToOne //post가 many
	@JoinColumn(name = "userId") //컬럼명 적기
	private User user;

	@CreationTimestamp 
	private Timestamp createDate; //만든시간
}
