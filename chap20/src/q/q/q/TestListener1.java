package q.q.q;

import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Application Lifecycle Listener implementation class TestListener1
 * 
 */
@WebListener
public class TestListener1 implements HttpSessionListener {

    /**
     * Default constructor. 
     */
    public TestListener1() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see HttpSessionListener#sessionCreated(HttpSessionEvent)
     */
    public void sessionCreated(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
//    사용자가 세션을 생성(특정 이벤트 시점이 존재)하고 뭔가를 해야할 때
    }

	/**
     * @see HttpSessionListener#sessionDestroyed(HttpSessionEvent)
     */
    public void sessionDestroyed(HttpSessionEvent se)  { 
         // TODO Auto-generated method stub
//    	세션이 종료가 될 때, session.invalidate
    }
	
}
