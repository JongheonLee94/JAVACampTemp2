package dao;

import vo.MemberVO;

public interface MemberDAO {
	public void register(MemberVO vo);
	public MemberVO login(MemberVO vo);
}
