package kr.ac.kopo.exhibition.service;

import java.util.List;

import kr.ac.kopo.exhibition.model.Event;
import kr.ac.kopo.exhibition.model.Photo;
import kr.ac.kopo.exhibition.pager.Pager;

public interface EventService {

	List<Event> list(Pager pager);

	void add(Event item);

	Event item(Long id);

	Photo itemPhoto(Long id);

	void deletePhoto(Long id);

	void update(Event item);

}
