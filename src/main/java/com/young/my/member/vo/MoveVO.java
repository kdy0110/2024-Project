package com.young.my.member.vo;

public class MoveVO {
	private String food;
	private String calPer;
	public String getFood() {
		return food;
	}
	public void setFood(String food) {
		this.food = food;
	}
	public String getCalPer() {
		return calPer;
	}
	public void setCalPer(String calPer) {
		this.calPer = calPer;
	}
	@Override
	public String toString() {
		return "MoveVO [food=" + food + ", calPer=" + calPer + "]";
	}

	
	
}
