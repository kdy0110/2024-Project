package com.young.my.board.vo;

public class SearchVO {
	
	private String stDt;
	private String endDt;
	
	public String getStDt() {
		return stDt;
	}
	public void setStDt(String stDt) {
		this.stDt = stDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}
	
	@Override
	public String toString() {
		return "SearchVO [stDt=" + stDt + ", endDt=" + endDt + "]";
	}
	
}
