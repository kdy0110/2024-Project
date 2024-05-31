package com.young.my.member.vo;

public class MemberVO {
	
	private String memId;
	private String memPw;
	private String memNm;
	private int memKg;
	private int memCm;
	private String useYn;
	private int roomNo;
	
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemPw() {
		return memPw;
	}
	public void setMemPw(String memPw) {
		this.memPw = memPw;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	public int getMemKg() {
		return memKg;
	}
	public void setMemKg(int memKg) {
		this.memKg = memKg;
	}
	public int getMemCm() {
		return memCm;
	}
	public void setMemCm(int memCm) {
		this.memCm = memCm;
	}
	public String getUseYn() {
		return useYn;
	}
	public void setUseYn(String useYn) {
		this.useYn = useYn;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	@Override
	public String toString() {
		return "MemberVO [memId=" + memId + ", memPw=" + memPw + ", memNm=" + memNm + ", memKg=" + memKg + ", memCm="
				+ memCm + ", useYn=" + useYn + ", roomNo=" + roomNo + "]";
	}

}
