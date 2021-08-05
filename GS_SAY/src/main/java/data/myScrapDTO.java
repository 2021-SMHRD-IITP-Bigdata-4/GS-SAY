package data;

public class myScrapDTO {
	private int scrapNum;
	private String memberId;
	private int infoNum;
	private String endDay;
	private String infoName;
	private String infoLink;
	
	public myScrapDTO(int scrapNum, String memberId, int infoNum, String endDay, String infoName, String infoLink) {
		this.scrapNum = scrapNum;
		this.memberId = memberId;
		this.infoNum = infoNum;
		this.endDay = endDay;
		this.infoName = infoName;
		this.infoLink = infoLink;
	}

	public int getScrapNum() {
		return scrapNum;
	}

	public String getMemberId() {
		return memberId;
	}

	public int getInfoNum() {
		return infoNum;
	}

	public String getEndDay() {
		return endDay;
	}

	public String getInfoName() {
		return infoName;
	}

	public String getInfoLink() {
		return infoLink;
	}
	
	
	
}
