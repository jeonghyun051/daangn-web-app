package com.cos.daangn.domain.post;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface PostRepository extends JpaRepository<Post, Integer>{

	// 메인화면 8개 뿌릴 때 사용
	@Query(value = "select * from post order by favorite desc LIMIT 0,8",nativeQuery = true)
	List<Post> favoritePost();
	
	
	// 상세보기화면에서 6개 뿌릴 때 사용
	@Query(value = "select * from post order by favorite desc LIMIT 0,6",nativeQuery = true)
	List<Post> detailFavoritePost();
	
	
	// 검색할 때 사용 (유저와 포스트를 합쳐서 유저주소와 포스트타이틀 찾기)
	@Query(value = "select p.* "
			+ "from user u inner join post p on u.id = p.userId "
			+ "where u.address like %?1% or p.title like %?1%", nativeQuery = true)
	List<Post> findByTitleAndAddress(String sear);
	
	
	// 지역선택 시 사용
	@Query(value = "select p.* "
			+ "from user u inner join post p on u.id = p.userId "
			+ "where u.address like %?1%", nativeQuery = true)
	List<Post> findByFirstAddress(String key);
}
