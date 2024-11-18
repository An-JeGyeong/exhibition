package kr.ac.kopo.exhibition.dao;

import java.util.List;

import kr.ac.kopo.exhibition.model.Event;
import kr.ac.kopo.exhibition.model.Photo;
import kr.ac.kopo.exhibition.model.Price;
import kr.ac.kopo.exhibition.pager.Pager;

public interface EventDao {

	int total(Pager pager);

	List<Event> list(Pager pager);

	void add(Event item);

	void addPhoto(Photo photo);

	void addPrice(Price price);

	Event item(Long id);

	Photo itemPhoto(Long id);

	void deletePhoto(Long id);

	void update(Event item);

	void updatePrice(Price price);

}
