package dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import vo.ClubCardVO;
import vo.ClubVO;
import vo.ScheduleVO;

public interface ClubDAO {
	public void writeClub(HttpServletRequest request, ClubVO clubVO, List<ScheduleVO> schedules);
	public List<ClubCardVO> getClub(String type, int page);
	public int maxPage();
	public ClubVO getDetail(String serial);
}
