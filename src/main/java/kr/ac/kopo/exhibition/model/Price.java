package kr.ac.kopo.exhibition.model;

import javax.validation.constraints.Min;

public class Price {
	private Long id;
	private Long eventId;
	
	@Min(value = 0, message = "가격은 0원 이하 일 수 없습니다.")
	private Long adult;
	
	@Min(value = 0, message = "가격은 0원 이하 일 수 없습니다.")
	private Long teenager;
	
	@Min(value = 0, message = "가격은 0원 이하 일 수 없습니다.")
	private Long children;
	
	@Min(value = 0, message = "가격은 0원 이하 일 수 없습니다.")
	private Long disabled;
	
	@Min(value = 0, message = "가격은 0원 이하 일 수 없습니다.")
	private Long patriot;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getEventId() {
		return eventId;
	}

	public void setEventId(Long eventId) {
		this.eventId = eventId;
	}

	public Long getAdult() {
		return adult;
	}

	public void setAdult(Long adult) {
		this.adult = adult;
	}

	public Long getTeenager() {
		return teenager;
	}

	public void setTeenager(Long teenager) {
		this.teenager = teenager;
	}

	public Long getChildren() {
		return children;
	}

	public void setChildren(Long children) {
		this.children = children;
	}

	public Long getDisabled() {
		return disabled;
	}

	public void setDisabled(Long disabled) {
		this.disabled = disabled;
	}

	public Long getPatriot() {
		return patriot;
	}

	public void setPatriot(Long patriot) {
		this.patriot = patriot;
	}

}
