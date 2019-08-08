package dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import vo.ClubVO;
import vo.ScheduleVO;

public interface ClubDAO {
	public void writeClub(HttpServletRequest request, ClubVO clubVO, List<ScheduleVO> schedules);
	public List<ClubVO> getClub(String type, int page);
}
