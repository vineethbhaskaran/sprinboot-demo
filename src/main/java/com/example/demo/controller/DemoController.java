package com.example.demo.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class DemoController {

	@RequestMapping("/")
	String hello() {
		return "Hello World, Spring Boot!";
	}
	
	@RequestMapping("/welcome")
	String welcome() {
		return "Welcome to Java development";
	}
	
	@RequestMapping("/about")
	String about() {
		return "I am a java developer";
	}
}
