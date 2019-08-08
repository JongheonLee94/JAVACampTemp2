package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.ClubDAO;
import dao.ClubDAO_OracleImpl;
import servlet.RequestMapping;
import util.Util;
import vo.ClubVO;
import vo.ScheduleVO;

@RequestMapping("/club_write.do")
public class ClubWriteController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) {
		String SavePath = "C:\\jps_image\\";

		MultipartRequest mpr = null;
		try {
			mpr = new MultipartRequest(request, SavePath, 1024 * 1024 * 200, "utf-8", new DefaultFileRenamePolicy());
		} catch (IOException e) {
			e.printStackTrace();
		}
		String fileName = mpr.getFilesystemName("file");

		ClubVO clubVO = new ClubVO();
		clubVO.setTitle(mpr.getParameter("title"));
		clubVO.setContent(mpr.getParameter("clubcontent"));
		clubVO.setsDate(mpr.getParameter("clubsDate")); // TO_DATA(?, 'YYYY-MM-DD HH24:MI:SS')
		clubVO.seteDate(mpr.getParameter("clubeDate"));
		clubVO.setMemberSerial(mpr.getParameter("memberserial"));
		clubVO.setMainPic(fileName);

		List<ScheduleVO> schedules = new ArrayList<ScheduleVO>();
		String[] schedulenames = mpr.getParameterValues("schedulename");
		String[] sDates = mpr.getParameterValues("sDate");
		String[] contents = mpr.getParameterValues("content");
		String[] prices = mpr.getParameterValues("price");
		String[] entrynums = mpr.getParameterValues("entrynum");
		String[] addrs1 = mpr.getParameterValues("addr1");
		String[] addrs2 = mpr.getParameterValues("addr2");
		String[] eDates = mpr.getParameterValues("eDate");
		for (int i = 0; i < schedulenames.length; i++) {
			ScheduleVO vo = new ScheduleVO();
			vo.setScheduleName(schedulenames[i]);
			vo.setsDate(sDates[i]);
			vo.setContent(contents[i]);
			vo.setPrice(Util.parseInt(prices[i]));
			vo.setEntryNum(Util.parseInt(entrynums[i]));
			vo.setAddr(addrs1[i] + " " + addrs2[i]);
			vo.seteDate(eDates[i]);
			schedules.add(vo);
		}

		ClubDAO clubDAO = new ClubDAO_OracleImpl();
		clubDAO.writeClub(request, clubVO, schedules);

		return "redirect:/clubBoard.do?viewtype=visit&pagenum=1";
	}

}
