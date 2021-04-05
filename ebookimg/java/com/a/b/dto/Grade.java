package com.a.b.dto;

public class Grade {
	private String bid;
	private long totalrental;
	private String grade;
	public String getBid() {
		return bid;
	}
	public void setBid(String bid) {
		this.bid = bid;
	}
	public long getTotalrental() {
		return totalrental;
	}
	public void setTotalrental(long totalrental) {
		this.totalrental = totalrental;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	@Override
	public String toString() {
		return "Grade [bid=" + bid + ", totalrental=" + totalrental + ", grade=" + grade + "]";
	}
	
}
