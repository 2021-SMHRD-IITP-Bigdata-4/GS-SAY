package data;

public class mainInfoDTO {
	
	private int infoNum;
	private String infoName;
	private String startDay;
	private String endDay;
	private int code;
	private String infoLink;
	
	public mainInfoDTO(int infoNum, String infoName, String startDay, String endDay, int code, String infoLink) {
		this.infoNum = infoNum;
		this.infoName = infoName;
		this.startDay = startDay;
		this.endDay = endDay;
		this.code = code;
		this.infoLink = infoLink;
	}

	public int getInfoNum() {
		return infoNum;
	}

	public String getInfoName() {
		return infoName;
	}

	public String getStartDay() {
		return startDay;
	}

	public String getEndDay() {
		return endDay;
	}

	public int getCode() {
		return code;
	}

	public String getInfoLink() {
		return infoLink;
	}
	
	
	
	
}
