package rtti;



public class MyClass {
	
	@Print(enable = false)
	public void print() {
		System.out.println("gello");
	}
	
	@Print
	public void aaa() {
		System.out.println("aaaaaaaaaaa");
	}
}
