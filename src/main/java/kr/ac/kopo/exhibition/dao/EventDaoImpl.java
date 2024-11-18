package kr.ac.kopo.exhibition.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.exhibition.model.Event;
import kr.ac.kopo.exhibition.model.Photo;
import kr.ac.kopo.exhibition.model.Price;
import kr.ac.kopo.exhibition.pager.Pager;

@Repository
public class EventDaoImpl implements EventDao {
	
	@Autowired
	SqlSession sql;

	@Override
	public int total(Pager pager) {
		return sql.selectOne("event.total", pager);
	}

	@Override
	public List<Event> list(Pager pager) {
		return sql.selectList("event.list", pager);
	}

	@Override
	public void add(Event item) {
		sql.insert("event.add", item);
		
	}

	@Override
	public void addPhoto(Photo photo) {
		sql.insert("event.add_photo", photo);
		
	}

	@Override
	public void addPrice(Price price) {
		sql.insert("event.add_price", price);
	}

	@Override
	public Event item(Long id) {
		return sql.selectOne("event.item", id);
	}

	@Override
	public Photo itemPhoto(Long id) {
		return sql.selectOne("event.item_photo", id);
	}

	@Override
	public void deletePhoto(Long id) {
		sql.delete("event.delete_photo", id);
		
	}

	@Override
	public void update(Event item) {
		sql.update("event.update", item);
	}

	@Override
	public void updatePrice(Price price) {
		sql.update("event.update_price", price);
		
	}

}
