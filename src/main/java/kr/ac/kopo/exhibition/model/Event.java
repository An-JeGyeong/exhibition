package kr.ac.kopo.exhibition.model;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.FutureOrPresent;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

public class Event {
	private Long id;
	
	@NotBlank(message = "카테고리를 선택해주세요.")
	private String category;
	
	@NotBlank(message = "제목을 입력해주세요.")
	private String title;
	
	@NotBlank(message = "장소를 입력해 주세요.")
	private String place;
	
	@NotNull(message = "시작 날짜를 선택해 주세요.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date openDate;
	
	@NotNull(message = "마감 날짜를 선택해 주세요.")
	@FutureOrPresent(message = "과거는 입력하실 수 없습니다.")
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private Date closeDate;

	@NotNull(message = "썸네일과 포스터 이미지를 업로드 해주세요.")
    @Size(min = 2, max = 2, message = "썸네일과 포스터를 입력해 주세요.")
	private List<Photo> photo;

	private Price price;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public Date getOpenDate() {
		return openDate;
	}

	public void setOpenDate(Date openDate) {
		this.openDate = openDate;
	}

	public Date getCloseDate() {
		return closeDate;
	}

	public void setCloseDate(Date closeDate) {
		this.closeDate = closeDate;
	}

	public List<Photo> getPhoto() {
		return photo;
	}

	public void setPhoto(List<Photo> photo) {
		this.photo = photo;
	}

	public Price getPrice() {
		return price;
	}

	public void setPrice(Price price) {
		this.price = price;
	}

}
