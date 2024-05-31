package com.young.my.chat.vo;

public class ChatLogVO {

	private int chatNo;
	private int roomNo;
	private String memId;
	private String memNm;
	private String chatMsg;
	private String chatContent;
	private String sendDate;
	public int getChatNo() {
		return chatNo;
	}
	public void setChatNo(int chatNo) {
		this.chatNo = chatNo;
	}
	public int getRoomNo() {
		return roomNo;
	}
	public void setRoomNo(int roomNo) {
		this.roomNo = roomNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMemNm() {
		return memNm;
	}
	public void setMemNm(String memNm) {
		this.memNm = memNm;
	}
	public String getChatMsg() {
		return chatMsg;
	}
	public void setChatMsg(String chatMsg) {
		this.chatMsg = chatMsg;
	}
	public String getChatContent() {
		return chatContent;
	}
	public void setChatContent(String chatContent) {
		this.chatContent = chatContent;
	}
	public String getSendDate() {
		return sendDate;
	}
	public void setSendDate(String sendDate) {
		this.sendDate = sendDate;
	}
	@Override
	public String toString() {
		return "ChatLogVO [chatNo=" + chatNo + ", roomNo=" + roomNo + ", memId=" + memId + ", memNm=" + memNm
				+ ", chatMsg=" + chatMsg + ", chatContent=" + chatContent + ", sendDate=" + sendDate + "]";
	}
	
	
}