package poly.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import poly.service.IMyRedisService;

@Controller
public class MyRedisController {
	
	@Resource(name="MyRedisService")
	private IMyRedisService myRedisService;
	
	@RequestMapping(value = "myRedis/test")
	@ResponseBody
	public String myRedis(HttpServletRequest request, HttpServletResponse response) throws Exception {
		myRedisService.doSaveData();
		
		return "success";
	}
}
