// 패키지명 위치
package jspexp.z01_vo;

// jspexp.z01_vo.Music
// 클래스명  : 객체지향 프로그램에서는 클래스명을 대문자로 시작한다.
public class Music {
	// 필드 = 클래스의 전역변수/상수
	// private : 접근제어자 - 외부에서 직접접근을 불가
	private String title;
	// 클래스명과 동일한 생성자.
	// Music m1 = new Music();
	public Music() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Music(String title) {
		// 생성자를 입력받아서 데이터를 초기화한다.
		// 리턴값이 없다.
		// Music m1 = new Music("즐거운 음악");
		this.title = title;
	}
	// m1.getTitle() : 데이터를 가져온다.
	public String getTitle() {
		return title;
	}
	//  기능 메서드 저장
	// 접근제어자 리턴값 메서드명(매개변수)
	// m1.setTitle("아름다운 음악");
	public void setTitle(String title) {
		this.title = title;
	}
	
}
