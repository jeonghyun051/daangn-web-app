package com.cos.daangn.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.cos.daangn.domain.post.Post;
import com.cos.daangn.domain.post.PostRepository;
import com.cos.daangn.domain.post.PostSearchReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class PostService {

	private final PostRepository postRepository;

	public List<Post> 전체찾기() {

		
		return postRepository.findAll();
	}

	public List<Post> 인기매물() {

		return postRepository.favoritePost();
	}

	public List<Post> 상세보기인기매물() {

		return postRepository.detailFavoritePost();
	}

	public Post 한건찾기(int id) {

		return postRepository.findById(id).get();
	}
	
	public List<Post> 검색하기(String search) {

		
		return postRepository.findByTitleAndAddress(search);
	}
	
	
	public List<Post> 시선택(String key) {
		
		return postRepository.findByFirstAddress(key);
	}
	
}
