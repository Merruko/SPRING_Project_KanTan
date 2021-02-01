package k_springMVC.biz.user;

public interface UserService {
	
	// 회원 등록
	public UserVO getUser(UserVO vo);
	
	// 회원 수정
	void updateUser(UserVO vo);
	
}