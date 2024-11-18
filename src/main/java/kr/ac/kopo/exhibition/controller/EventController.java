package kr.ac.kopo.exhibition.controller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.exhibition.model.Event;
import kr.ac.kopo.exhibition.model.Photo;
import kr.ac.kopo.exhibition.model.Price;
import kr.ac.kopo.exhibition.pager.Pager;
import kr.ac.kopo.exhibition.service.EventService;

@Controller
@RequestMapping("/event")
public class EventController {
	final String path = "event/";
	final String uploadPath = "c:/upload/";
	
	@Autowired
	EventService eventservice;
	
	@GetMapping("/list")
	String list(Model model, Pager pager) {
		List<Event> list = eventservice.list(pager);
		model.addAttribute("list", list);
		
		return path + "list";
	}

	@GetMapping("/add")
	String add() {
		return path + "add";
	}
	
	@PostMapping("/add")
	String add(@Valid Event item, @Valid Price price, List<MultipartFile> uploadFile, BindingResult bindingResult) {
		
		List<Photo> photos = new ArrayList<Photo>();
		
		for(MultipartFile file : uploadFile) {
			if(file != null && !file.isEmpty()) {
				String filename = file.getOriginalFilename();
				String uuid = UUID.randomUUID().toString();
				
				try {
					file.transferTo(new File(uploadPath + uuid + "_" + filename));
					
					Photo photo = new Photo();
					photo.setFilename(filename);
					photo.setUuid(uuid);
					
					photos.add(photo);
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		item.setPhoto(photos);
		
		item.setPrice(price);
		
		if(bindingResult.hasErrors()) {
			return path + "valid/add";
		}
		
		eventservice.add(item);
		
		return "redirect:list";
		
	}
	
	@GetMapping("/update/{id}")
	String update(@PathVariable Long id, Model model) {
		Event item = eventservice.item(id);
		
		model.addAttribute("item", item);
		
		return path + "update";
	}
	
	@PostMapping("/update/{id}")
	String update(@PathVariable Long id, Event item, Price price, List<MultipartFile> uploadFile) {

		List<Photo> photos = new ArrayList<Photo>();
		
		for(MultipartFile file : uploadFile) {
			if(file != null && !file.isEmpty()) {
				String filename = file.getOriginalFilename();
				String uuid = UUID.randomUUID().toString();
				
				try {
					file.transferTo(new File(uploadPath + uuid + "_" + filename));
					
					Photo photo = new Photo();
					photo.setFilename(filename);
					photo.setUuid(uuid);
					
					photos.add(photo);
				}catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		
		item.setPhoto(photos);
		
		item.setPrice(price);
		
		eventservice.update(item);
		
		return "redirect:../list";
	}
	
	@ResponseBody
	@GetMapping("/delete/photo/{id}")
	String deletePhoto(@PathVariable Long id) {
		Photo item = eventservice.itemPhoto(id);
		
		eventservice.deletePhoto(id);
		
		File file = new File (uploadPath + item.getUuid() + "_" + item.getFilename());
		file.delete();
		
		return id.toString();
	}
	
}
