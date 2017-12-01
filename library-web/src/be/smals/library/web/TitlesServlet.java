package be.smals.library.web;

import java.io.IOException;
import java.util.List;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import be.smals.library.dao.EntityDao;
import be.smals.library.model.Title;

/**
 * Servlet implementation class TitlesServlet
 */
@WebServlet("/displaytitles")
public class TitlesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	@EJB
	private EntityDao<Title, Long> titleDao;
	
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TitlesServlet() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("<html><head><title>display titles</title><head><body><ul>");
		System.out.println("display titles with titleDado");
		List<Title> titles = titleDao.findAll(Title.class, 1, 2);
		
		
		for(Title item : titles) {
			response.getWriter().append("<li> title name : " + item.getName() + "</li>"); 
		}
		response.getWriter().append("</ul></body></html>");
		
	}

}
