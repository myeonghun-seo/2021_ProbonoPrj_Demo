package poly.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import poly.persistence.redis.IMyRedisMapper;
import poly.service.IMyRedisService;

@Service("MyRedisService")
public class MyRedisService implements IMyRedisService {
	
	@Resource(name="MyRedisMapper")
	private IMyRedisMapper myRedisMapper;
		
	@Override
	public void doSaveData() throws Exception {
		myRedisMapper.doSaveData();
	}

}
