package k_springMVC.view.user;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import k_springMVC.biz.user.UserVO;
import k_springMVC.biz.user.impl.UserDAO;

@Controller
public class LoginController {

	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String loginView(@ModelAttribute("user") UserVO vo) {
		System.out.println("로그인 화면으로 이동...");
		vo.setId("kdh9427");
		vo.setPassword("0319");
		return "k_login.jsp";
	}

	@RequestMapping(value = "/login.do", method = RequestMethod.POST)
	public String login(UserVO vo, UserDAO userDAO, HttpSession session) {
		if (vo.getId() == null || vo.getId().equals("")) {
			throw new IllegalArgumentException("아이디는 반드시 입력해야 합니다.");
		}
		UserVO user = userDAO.getUser(vo);
		if (user != null) {
			session.setAttribute("userId", user.getId());
			session.setAttribute("userPassword", user.getId());
			session.setAttribute("userName", user.getName());
			session.setAttribute("userGender", user.getGender());
			session.setAttribute("userBirth", user.getBirth());
			session.setAttribute("userEmail", user.getEmail());
			session.setAttribute("userPhone", user.getPhone());
			return "getBoardList.do";
		} else
			return "k_login.jsp";
	}
}