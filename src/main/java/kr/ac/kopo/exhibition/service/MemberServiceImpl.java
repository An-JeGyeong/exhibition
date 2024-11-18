package kr.ac.kopo.exhibition.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.exhibition.dao.MemberDao;
import kr.ac.kopo.exhibition.model.Member;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	MemberDao memberdao;

	@Override
	public boolean login(Member item) {
		Member member = memberdao.item(item.getId());
		
		if(member != null) {
			if (item.getPasswd().equals(member.getPasswd())) {
				BeanUtils.copyProperties(member, item);
				item.setPasswd(null);
				
				return true;
			}
		}
		
		return false;
	}

	@Override
	public void signup(Member item) {
		
		item.setRole(5);
		
		memberdao.add(item);
		
	}

	@Override
	public boolean isUnique(String id) {
		if(memberdao.item(id) == null)
			return true;
		
		return false;
	}
	
}
