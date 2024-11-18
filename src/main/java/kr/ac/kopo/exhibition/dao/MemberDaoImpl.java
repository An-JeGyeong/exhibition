package kr.ac.kopo.exhibition.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.exhibition.model.Member;

@Repository
public class MemberDaoImpl implements MemberDao {

	@Autowired
	SqlSession sql;
	
	@Override
	public Member item(String id) {
		return sql.selectOne("member.item", id);
	}

	@Override
	public void add(Member item) {
		sql.insert("member.add", item);
		
	}

}
