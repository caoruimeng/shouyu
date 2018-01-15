package cn.rmhfh.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.rmhfh.dao.TypeDao;
import cn.rmhfh.entity.Type;
import cn.rmhfh.service.TypeService;

@Service
public class TypeServiceImpl implements TypeService {

	@Autowired
	private TypeDao typeDao;
	@Override
	public List<Type> getAll() {
		
		return typeDao.getAll();
	}

}
