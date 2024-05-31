package com.young.my.member.vo;

public class InbodyVO {

	private String memId;
	private int exerKg;
	private int exerFkg;
	private int exerBmi;
	private int exerMu;
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public int getExerKg() {
		return exerKg;
	}
	public void setExerKg(int exerKg) {
		this.exerKg = exerKg;
	}
	public int getExerFkg() {
		return exerFkg;
	}
	public void setExerFkg(int exerFkg) {
		this.exerFkg = exerFkg;
	}
	public int getExerBmi() {
		return exerBmi;
	}
	public void setExerBmi(int exerBmi) {
		this.exerBmi = exerBmi;
	}
	public int getExerMu() {
		return exerMu;
	}
	public void setExerMu(int exerMu) {
		this.exerMu = exerMu;
	}
	@Override
	public String toString() {
		return "inbodyVO [memId=" + memId + ", exerKg=" + exerKg + ", exerFkg=" + exerFkg + ", exerBmi=" + exerBmi
				+ ", exerMu=" + exerMu + "]";
	}
}
