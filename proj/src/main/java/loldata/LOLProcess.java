package loldata;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LOLProcess
 */
@WebServlet("/LOLProcess")
public class LOLProcess extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LOLProcess() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html; charset = utf-8");
		
		String S_blood = request.getParameter("blood");
		String S_tower = request.getParameter("tower");
		String S_inhibitor = request.getParameter("inhibitor");
		String S_baron = request.getParameter("baron");
		String S_dragon = request.getParameter("dragon");
		
		System.out.println(S_blood + ", " + S_tower +  ", " + S_inhibitor + ", " + S_baron + ", " + S_dragon);
		
		if (S_blood==null) {
			S_blood = "0";
		}
		if (S_tower==null) {
			S_tower = "0";
		}
		if (S_inhibitor==null) {
			S_inhibitor = "0";
		}
		if (S_baron==null) {
			S_baron = "0";
		}
		if (S_dragon==null) {
			S_dragon = "0";
		}
		
		System.out.println(S_blood + ", " + S_tower +  ", " + S_inhibitor + ", " + S_baron + ", " + S_dragon);
		
		
		int blood = Integer.parseInt(S_blood);
		int tower = Integer.parseInt(S_tower);
		int inhibitor = Integer.parseInt(S_inhibitor);
		int baron = Integer.parseInt(S_baron);
		int dragon = Integer.parseInt(S_dragon);
		
		System.out.println(blood + ", " + tower +  ", " + inhibitor + ", " + baron + ", " + dragon);
		
		lol_data_dto dto = new lol_data_dto();
		dto.setFirst_Blood(blood);
		dto.setFirst_Tower(tower);
		dto.setFirst_Inhibitor(inhibitor);
		dto.setFirst_Baron(baron);
		dto.setFirst_Dragon(dragon);
		
		lol_data_dao dao = new lol_data_dao();
		ArrayList<lol_data_dto> vec = new ArrayList<lol_data_dto>();
		System.out.println( dto.getFirst_Blood() + ", " +  dto.getFirst_Tower() + "," + dto.getFirst_Inhibitor() + ","
				+ dto.getFirst_Baron() + "," +dto.getFirst_Dragon());
		vec = dao.allLOL(dto);
		
		request.setAttribute("search", vec);
		ServletContext context = this.getServletContext();
		RequestDispatcher dispatcher = context.getRequestDispatcher("/show_LOL.jsp");
		dispatcher.forward(request, response);
	}


}
