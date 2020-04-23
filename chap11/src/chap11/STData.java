package chap11;

public class STData {
	private String name;
	private int score;
//	변수 명명법은 반드시 소문자로 시작한다.
	public STData(String name, int score) {
		this.name = name;
		this.score = score;
	}
	
//	public String test() {
//		return name;
//	}
//	의미적으로 getter는 맞다.	
	
	public String getName() {
		return name;
	}
	
	public int getScore() {
		return score;
	}
	
//	오버라이딩된 해당 메소드의 값이 return
	public String toString() {
		return "아무거나....";
	}
	
}

