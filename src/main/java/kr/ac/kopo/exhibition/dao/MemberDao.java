package kr.ac.kopo.exhibition.dao;

import kr.ac.kopo.exhibition.model.Member;

public interface MemberDao {

	Member item(String id);

	void add(Member item);

}
