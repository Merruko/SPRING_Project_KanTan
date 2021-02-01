package k_springMVC.view.user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import k_springMVC.biz.user.UserService;
import k_springMVC.biz.user.UserVO;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;

	// 회원 수정
	@RequestMapping("/updateUser.do")
	public String updateUser(@ModelAttribute("user") UserVO vo) {
		userService.updateUser(vo);
		return "k_mypage.jsp";
	}

}