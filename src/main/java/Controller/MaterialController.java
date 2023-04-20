package Controller;


import java.sql.Connection;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import DAO.MaterialDAO;
import Model.Material;
import Model.User;
import dbUtil.DBConnect;
import dbUtil.HibernateSF;

@Controller
public class MaterialController {
	
	//global database connection
	Connection conn = DBConnect.openConnection();
	
	
	//Student functions
	
	//display material in student dashboard
	@RequestMapping(value = "/material")
	public String display(HttpServletRequest request, HttpSession sess, ModelMap model) {
		
		//get session
		User student = (User)sess.getAttribute("user");
		
		//display data
		List<Material> m = MaterialDAO.display();
		
		//add to page
		model.addAttribute("m",m);
		model.addAttribute("sid",student);
		
		return "studentDashboard";
	}
	
	@RequestMapping(value = "/materialAdmin")
	public String displaym(HttpServletRequest request, ModelMap model) {
		
		List<Material> m = MaterialDAO.display();
		model.addAttribute("m",m);
		model.addAttribute("ma","admin");
		
		
		return "listBook";
		
	}
	
	@RequestMapping(value = "/updateBookForm")
	public String displayUpdateBook(HttpServletRequest request, ModelMap model,HttpSession sess) {
		
		//Session session = HibernateSF.getCurrentSession().openSession();
		

		//get material that is requested
		int matid = Integer.parseInt(request.getParameter("materialid"));
		Material m = MaterialDAO.displayById(matid);
		model.addAttribute("m",m);
		
		
		return "updateBook";
		
	}
	
	@RequestMapping(value = "/bookupdated")
	public String bookupdated(HttpServletRequest request, ModelMap model,HttpSession sess) {
		
		int materialid = Integer.parseInt(request.getParameter("materialid"));
		int isbn = Integer.parseInt(request.getParameter("isbn"));
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String publisher = request.getParameter("publisher");
		String version = request.getParameter("version");
		String description = request.getParameter("description");
		
		Material listReq = MaterialDAO.updateMaterial(materialid,isbn,title,author,publisher,version,description);

		return "redirect:/materialAdmin";
	}


	//add Book
	@RequestMapping(value = "/addBook")
	public String addBook(Model mod, HttpServletRequest request, HttpSession sess) {
		
		Session session= HibernateSF.getCurrentSession().openSession();
		Material b = new Material();
		int isbn =Integer.parseInt(request.getParameter("isbn"));
		String message = "Material Already Exists";
		request.setAttribute("message", message);
		List<Material> uList = session.createQuery("from Material").list();
		boolean exists=false;
		for(int i=0; i<uList.size();i++)
		{
			if(uList.get(i).getIsbn()==(isbn))
			{
			  exists =true;
			 
			}
		}
		if(exists)
			//return uList.get(0);
			return "redirect:/addBook";
		else
		{
			b.setIsbn(Integer.parseInt(request.getParameter("isbn")));
		    b.setTitle(request.getParameter("title"));
		    b.setAuthor(request.getParameter("author"));
		    b.setPublisher(request.getParameter("publisher"));
		    b.setVersion(request.getParameter("version"));
		    b.setDescription(request.getParameter("description"));
		    b.setMaterialLink(request.getParameter("materialLink"));
		    b.setType(request.getParameter("type"));
		    //b.setMaterialLink(request.getParameter("materialLink"));
		    
		   
		session.beginTransaction();
		session.save(b);
		session.getTransaction().commit();
		session.close();
		}
		return "redirect:/materialAdmin";
	}



	
	//displays details of material clicked by student
	@RequestMapping(value = "/materialDetails")
	public String displayById(HttpServletRequest request, HttpSession sess, ModelMap model) {
		
		//get session
		User student = (User)sess.getAttribute("user");
		model.addAttribute("sid",student);
		
		//perform display
		int matid = Integer.parseInt(request.getParameter("materialid"));
		Material m = MaterialDAO.displayById(matid);
		model.addAttribute("m",m);
		
		if(m.getType().equals("Book")) {
			
			model.addAttribute("btn","Apply Book");
			
		}else {
			model.addAttribute("btn","Download");
		}
		
		
		return "requestBook";
	}
	
	
	@RequestMapping(value = "/materialAdminDetails")
	public String displayByIdd(HttpServletRequest request, HttpSession sess, ModelMap model) {
		
		//get session
		User student = (User)sess.getAttribute("user");
		model.addAttribute("sid",student);
		
		//perform display
		int matid = Integer.parseInt(request.getParameter("materialid"));
		Material m = MaterialDAO.displayById(matid);
		model.addAttribute("m",m);
		
		if(m.getType().equals("Book")) {
			
			model.addAttribute("btn","Update Book");
			
		}else {
			model.addAttribute("btn","Download");
		}
		
		
		return "updateBook";
	}
	
	
	//displays details of material clicked by student
		@RequestMapping(value = "/matReq")
		public String requestMaterial(HttpServletRequest request, HttpSession sess, ModelMap model) {
			
			//get session
			User student = (User)sess.getAttribute("user");
			model.addAttribute("sid",student);
			
			//get material that is requested
			int matid = Integer.parseInt(request.getParameter("materialid"));
			Material m = MaterialDAO.displayById(matid);
			model.addAttribute("m",m);
			
			//get current date
			Date d = new Date();
			model.addAttribute("date",d);
			
			
			return "requestForm";
		}
		
		
		//search by Title
		@RequestMapping(value = "/search")
		public String search(HttpServletRequest request, HttpSession sess, ModelMap model) {
			
	
			//search details
			String searched = request.getParameter("title");
			List<Material> m = MaterialDAO.search(searched);
			
			//add to page
			model.addAttribute("m",m);
			
			return "studentDashboard";
		}
		
		@RequestMapping(value = "/materialeBook")
		public String displayeBook(HttpServletRequest request, ModelMap model) {
			
			List<Material> m = MaterialDAO.display();
			model.addAttribute("m",m);
			model.addAttribute("ma","admin");
			
			
			return "uploadMaterial";
			
		}
		
		@RequestMapping(value = "/materialPDF")
		public String displayPDF(HttpServletRequest request, ModelMap model) {
			
			List<Material> m = MaterialDAO.display();
			model.addAttribute("m",m);
			model.addAttribute("ma","admin");
			
			
			return "uploadOtherMaterial";
			
		}
		
		@RequestMapping(value = "/addBookForm")
		public String addBookForm(HttpServletRequest request, ModelMap model) {
			
			List<Material> m = MaterialDAO.display();
			model.addAttribute("m",m);
			model.addAttribute("ma","admin");
			
			
			return "addBook";
			
		}

		
		//delete Material
		@RequestMapping("/deletedMaterial")
		public String deletedMaterial(HttpServletRequest request, ModelMap model,HttpSession sess) {

			int materialid = Integer.parseInt(request.getParameter("materialid"));
			Material listReq = MaterialDAO.deleteMaterial(materialid);

			return "redirect:/materialAdmin";
		}

			

}

