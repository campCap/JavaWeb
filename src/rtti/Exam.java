package rtti;

public class Exam {
	private int kor;
	private int eng;
	private int math;
	
	
	
	public Exam(int kor, int eng, int math) {
		super();
		this.kor = kor;
		this.eng = eng;
		this.math = math;
	}
	public Exam() {
		this(10, 20, 30);
	}
	public int getKor() {
		return kor;
	}
	public void setKor(int kor) {
		this.kor = kor;
	}
	public int getEng() {
		return eng;
	}
	public void setEng(int eng) {
		this.eng = eng;
	}
	public int getMath() {
		return math;
	}
	public void setMath(int math) {
		this.math = math;
	}
	public double avg() {
		// TODO Auto-generated method stub
		return total()/3;
	}
	public int total() {
		// TODO Auto-generated method stub
		return kor+eng+math;
	}
	
	
}
