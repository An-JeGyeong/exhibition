package kr.ac.kopo.exhibition.service;

import kr.ac.kopo.exhibition.model.Member;

public interface MemberService {
	
	boolean login(Member item);

	void signup(Member item);

	boolean isUnique(String id);

}
