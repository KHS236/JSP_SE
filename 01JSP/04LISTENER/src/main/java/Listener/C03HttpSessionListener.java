package Listener;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class C03HttpSessionListener implements HttpSessionListener{

	//세션 생성시에 대한 리스너
	@Override
	public void sessionCreated(HttpSessionEvent se) {
		System.out.println("[LISTENER] C03HttpSessionListener Created...");
	}

	//세션 제거시에 대한 리스너
	@Override
	public void sessionDestroyed(HttpSessionEvent se) {
		System.out.println("[LISTENER] C03HttpSessionListener Destroyed...");
	}
	
}
