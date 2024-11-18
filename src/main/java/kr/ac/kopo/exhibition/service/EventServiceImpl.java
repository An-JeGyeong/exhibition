package kr.ac.kopo.exhibition.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.exhibition.dao.EventDao;
import kr.ac.kopo.exhibition.model.Event;
import kr.ac.kopo.exhibition.model.Photo;
import kr.ac.kopo.exhibition.model.Price;
import kr.ac.kopo.exhibition.pager.Pager;

@Service
public class EventServiceImpl implements EventService {
	
	@Autowired
	EventDao eventdao;
	
	@Override
	public List<Event> list(Pager pager) {
		int total = eventdao.total(pager);
		
		pager.setTotal(total);
		
		return eventdao.list(pager);
	}

	@Transactional
	@Override
	public void add(Event item) {
		eventdao.add(item);
		
		Long eventId = item.getId();
		
	    Price price = item.getPrice();
	    price.setEventId(eventId);
	    eventdao.addPrice(price);
		
		if(item.getPhoto() != null) {
			for(Photo photo : item.getPhoto()) {
				photo.setEventId(item.getId());
				eventdao.addPhoto(photo);
			}
		}
		
	}

	@Override
	public Event item(Long id) {
		Event event = eventdao.item(id);
		return event;
	}
	
	@Transactional
	@Override
	public void update(Event item) {
		eventdao.update(item);
		
		Long eventId = item.getId();
		
	    Price price = item.getPrice();
	    price.setEventId(eventId);
	    eventdao.updatePrice(price);
		
		if(item.getPhoto() != null) {
			for(Photo photo : item.getPhoto()) {
				photo.setEventId(item.getId());
				eventdao.addPhoto(photo);
			}
		}
		
	}

	@Override
	public Photo itemPhoto(Long id) {
		return eventdao.itemPhoto(id);
	}

	@Override
	public void deletePhoto(Long id) {
		eventdao.deletePhoto(id);
		
	}

}
