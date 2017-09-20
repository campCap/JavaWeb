package rtti;

import java.lang.annotation.Annotation;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class MyDispatcher {

	public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException, NoSuchMethodException, SecurityException, IllegalArgumentException, InvocationTargetException {
		
		Class<?> cls = Class.forName("rtti.MyClass");
		MyClass myClass = (MyClass) cls.newInstance();
		Class<?>[] noparams = {};
		
		
		Method[] methods = myClass.getClass().getDeclaredMethods();
		
		System.out.println(methods.length);
		
		for(Method m : methods) {
			System.out.println("Method Name : " + m.getName());
			
			if(m.isAnnotationPresent(Print.class)) {
				Annotation ano = m.getAnnotation(Print.class);
				Print printAno = (Print)ano;
				
				if(printAno.enable()) {
					Method method = cls.getDeclaredMethod(m.getName(), noparams);
					method.invoke(myClass);
				}
			}
				
				
			/*if(m.getName().equals("aaa")) {
				for(Parameter p  : m.getParameters() ) {
					System.out.println("aaa() parameter name: " + p.getName());
					System.out.println("aaa() parameter type: " + p.getParameterizedType().getTypeName());
				}
			}*/
				
		}
		
	}

}
