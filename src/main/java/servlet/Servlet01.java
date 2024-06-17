package servlet;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import vo.UserVo;

@WebServlet("/01")
public class Servlet01 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//예제01) 표현할 데이터를 서블릿에서 속성으로 설정해두고 
		//-> jsp에서 받아와서 JSP,EL방식으로 출력해보는 연습
		
		
		//데이터를 직접 세팅하는 방법..
		//정수형 데이터 세팅
		int iValue = 2024;
		//실수형 데이터 세팅
		Double fValue = Math.PI;
		//문자형 데이터 세팅
		String sValue = "Hello Servlet";
		//boolen형 데이터 세팅
		boolean bValue = true;
		//null 값 세팅
		Object nullValue = null;
		
		
		//vo 객체
		//만약에 vo객체를 통해서 세팅을 하게 된다면 (실무에서 주로 쓰임)
		//만들어진 객체: no, name, email, password, gender를 들고와서 
		//getter,setter를 통해 세팅한 객체들에 외부파라미터를 넣고 세팅해주는 작업
		
		//vo의 인스턴스 생성
		UserVo vo = new UserVo();
		//필드 세팅
		vo.setNo(100);
		vo.setEmail("hong@example.com");
		//vo.setPassword("");
		//vo.setGender("");
		
		
		//req 요청의 속성에 데이터 설정해주기
		//현재 처리중인 객체에다 ->속성 추가한다 ->setAttribute 메서드 구현
		request.setAttribute("iValue", iValue); //(이름,데이터)
		request.setAttribute("fValue", fValue);
		request.setAttribute("sValue", sValue);
		request.setAttribute("bValue", bValue);
		request.setAttribute("nullValue", nullValue);
		
		//vo도 
		request.setAttribute("userVo", vo);
		
		
		//JSP로 포워딩
		//화면 요청 (RequestDispatcher)을 통해 01.jsp 화면 띄우기
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/01.jsp");
		rd.forward(request, response); //포워드

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
