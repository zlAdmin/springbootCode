package com.wencst.server.aps.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class IndexController {
	private static final Logger logger = LoggerFactory
			.getLogger(IndexController.class);

	@RequestMapping("/index") public String index() {
		logger.debug("-------------index------------");
		return "index";
	}

	@RequestMapping("/{page}") public String toPage(
			@PathVariable("page") String page) {
		logger.debug("-------------to page------------" + page);
		return page;
	}
	@RequestMapping("/aps/{page}") public String toApsPage(
			@PathVariable("page") String page) {
		logger.debug("-------------to aps page------------" + page);
		return "/aps/"+page;
	}
	@RequestMapping("/json/{page}") public String toJsonPage(
			@PathVariable("page") String page) {
		logger.debug("-------------to aps page------------" + page);
		return "/json/"+page;
	}
}
