package com.cos.daangn.web;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.cos.daangn.domain.post.Post;
import com.cos.daangn.domain.post.PostSearchReqDto;
import com.cos.daangn.service.PostService;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class PostController {
	
	private final PostService postService;
	
//	@GetMapping({"","/"})
//	public String home(Model model) {
//		
//		List<Post> posts =postService.전체찾기();
//		System.out.println("전체찾기:" + posts);
//		model.addAttribute("posts",posts);
//		
// 		return "index";
//	}
	
	@GetMapping({"","/"})
	public String home(Model model) {
		
		List<Post> posts =postService.인기매물();
		System.out.println("인기매물:" + posts);
		model.addAttribute("posts",posts);
		
 		return "index";
	}

	@GetMapping("/post/hot")
	public String hotpost(Model model) {
		List<Post> posts = postService.전체찾기();
		model.addAttribute("posts",posts);
		
		return "post/hotpost";
	}
	
	@GetMapping("/post/{id}")
	public String hotpost(@PathVariable int id, Model model) {
		Post post = postService.한건찾기(id);
		model.addAttribute("post",post);
		
		List<Post> posts =postService.상세보기인기매물();
		System.out.println("인기매물:" + posts);
		model.addAttribute("posts",posts);
		return "post/detail";
	}

	@GetMapping("/post/trust")
	public String trust() {

		return "layout/trust";
	}
	
	@GetMapping("/post/search")
	public String search(String search, Model model) {
		System.out.println("서치값" + search);
		List<Post> posts =  postService.검색하기(search);
		model.addAttribute("posts",posts);
		return "post/search";
	}
	
	@GetMapping("/post/option")
	public @ResponseBody String option(String key) {

		return key;
	}
	
	@GetMapping("/post/option2")
	public String option2(String key, Model model) {
		System.out.println("key" + key);
		List<Post> posts = postService.시선택(key);
		model.addAttribute("posts",posts);
		model.addAttribute("key",key);
		System.out.println("값떳냐 " + posts);
		return "post/hotpost";
	}

}
