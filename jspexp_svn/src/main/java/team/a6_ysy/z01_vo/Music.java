package team.a6_ysy.z01_vo;

public class Music {
	
	private String title;
	private String singer;
	private int start_year;
	public Music() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Music(String title, String singer, int start_year) {
		super();
		this.title = title;
		this.singer = singer;
		this.start_year = start_year;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSinger() {
		return singer;
	}
	public void setSinger(String singer) {
		this.singer = singer;
	}
	public int getStart_year() {
		return start_year;
	}
	public void setStart_year(int start_year) {
		this.start_year = start_year;
	}
	
	

}
