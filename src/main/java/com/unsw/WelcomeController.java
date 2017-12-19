package com.unsw;

import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import unsw.curation.api.extractnamedentity.ExtractEntitySentence;
import unsw.curation.api.tokenization.ExtractionKeywordImpl;


@Controller
public class WelcomeController {
	
	// inject via application.properties
	@Value("${welcome.message:test}")
	private String message = "Hello World";

	private XMLparser xmlparser = new XMLparser();
	private List<String> exp = new ArrayList<String>();
	private List<String> exo = new ArrayList<String>();
	private List<String> exl = new ArrayList<String>();
	private String keyword;

	//把helloworld放进message里面
	@RequestMapping("/") //localhost:8080/
	public String welcome(Map<String, Object> model) {
		model.put("message", this.message);
		return "welcome";
	}
	
	@RequestMapping("/search")
	public String search(Map<String, Object> model) {
		model.put("list", this.xmlparser.lc.getList());
		return "search";
	}
	@RequestMapping(value = "/headline/{id}")
	public ModelAndView headline(@PathVariable String id) {
		ModelAndView mod = new ModelAndView("headline");
		ArrayList<Content> ex = xmlparser.lc.getList();
		Content con = null;
		for(int i = 0;i < ex.size();i ++) {
			if(ex.get(i).getRow_Id().equals(id)) {
				con = ex.get(i);
			}
		}
		mod.addObject("Content", con);
		try{
			api(con.getContent());
		}catch(Exception e){
			e.printStackTrace();
		}
		
		//String[] key = keyword.split(",");
		ArrayList<String> key = new ArrayList<String>(Arrays.asList(keyword.split(",")));
		mod.addObject("exp",exp);
		mod.addObject("exo",exo);
		mod.addObject("exl", exl);
		mod.addObject("keyword", key);
		//return "headline";
		return mod;
	}
	
	
	@RequestMapping(path = "/result", method = RequestMethod.GET)
	public ModelAndView result(HttpServletRequest request) {
		ArrayList<Content> ex = xmlparser.lc.getList();
		Map<String,String[]> para = request.getParameterMap();
		String[] params=para.get("param");
		String[] q=para.get("q");

		
		String[] date = para.get("date");
		String[] ci = para.get("ci");
		String[] ag = para.get("ag");
		String[] ke = para.get("ke");
		String[] res = para.get("se");
		
		ModelAndView mod = new ModelAndView("result");		
		ArrayList<Content> result = null;
		mod.addObject("list", result);
		if(params != null && q!= null) {
			if(params[0].equals("Year")) {
				result = selectYear(q[0],ex);
				mod.addObject("list",result);
			}
			if(params[0].equals("City")) {
				//result = selectCity(q[0]);
				mod.addObject("list",selectCity(q[0],ex));
			}
			if(params[0].equals("Agency")) {
				result = selectAgency(q[0],ex);
				mod.addObject("list",result);
			}
			if(params[0].equals("Content")) {
				result = selectContent(q[0],ex);
				mod.addObject("list",result);
			}
		}else{
//			if(res[0].equals("search")) {
				result = adSearch(date[0],ci[0],ag[0],ke[0],ex);
				mod.addObject("list", result);
//			}
		}

		return mod;
	}
	
	@RequestMapping("/contact")
	public String contact(Map<String, Object> model) {
		model.put("message", this.message);
		return "contact";
	}
	@RequestMapping("/sitemap")
	public String sitemap(Map<String, Object> model) {
		model.put("message", this.message);
		return "sitemap";
	}
	@RequestMapping("/get10")
	public String get10(Map<String, Object> model) {
		model.put("list", ran(10));
		return "get10";
	}
	@RequestMapping("/get100")
	public String get100(Map<String, Object> model) {
		model.put("list", ran(100));
		return "get100";
	}
	@RequestMapping("/get1000")
	public String get1000(Map<String, Object> model) {
		model.put("list", ran(1000));
		return "get1000";
	}
	@RequestMapping("/getAll")
	public String getAll(Map<String, Object> model) {
		model.put("list", this.xmlparser.lc.getList());
		return "getAll";
	}
	
	public ArrayList<Content> ran(int num) {
		ArrayList<Content> a = new ArrayList<Content>();
		int i = 0;
		Random rand = new Random();
		int maxNum = xmlparser.lc.getList().size() - 1;
		for(int count = 0;count < num; count++) {
			i = rand.nextInt((maxNum - 0) + 1) + 0;
			a.add(xmlparser.lc.getList().get(i));
		}
		return a;
	}
	
	public ArrayList<Content> selectCity(String city, ArrayList<Content> ls) {
		ArrayList<Content> a = new ArrayList<Content>();
		//ArrayList<Content> ex = xmlparser.lc.getList();
		if(city == null) a.add(null);
		for(int i = 0;i < ls.size();i++) {
			Content n = ls.get(i);
			if(n.getCity().contains(city)) {
				//System.out.println("city");
				a.add(n);
			}
		}
		return a;
	}
	

	public ArrayList<Content> selectYear(String year,ArrayList<Content> ls) {
		ArrayList<Content> a = new ArrayList<Content>();
		//ArrayList<Content> ex = xmlparser.lc.getList();
		if(year == null) a.addAll(null);
		for(int i = 0;i < ls.size();i++) {
			String n = ls.get(i).getPublish_year();
			if(n.contains(year)) {
				a.add(ls.get(i));
			}
		}
		return a;
	}
	
	public ArrayList<Content> selectAgency(String agency,ArrayList<Content> ls) {
		ArrayList<Content> a = new ArrayList<Content>();
		//ArrayList<Content> ex = xmlparser.lc.getList();
		if(agency == null) a.addAll(null);
		for(int i = 0;i < ls.size();i++) {
			String n = ls.get(i).getAgency();
			//System.out.println(n);
			if(n.contains(agency)) {
				a.add(ls.get(i));
			}
		}
		return a;
	}
	
	public ArrayList<Content> selectContent(String content,ArrayList<Content> ls) {
		ArrayList<Content> a = new ArrayList<Content>();
		//ArrayList<Content> ex = xmlparser.lc.getList();
		if(content == null) a.add(null);
		for(int i = 0;i < ls.size();i++) {
			String n = ls.get(i).getContent()+ls.get(i).getContent2()+ls.get(i).getContent3()+ls.get(i).getContent4();
			if(n.contains(content)) {
				//System.out.println("content");
				a.add(ls.get(i));
			}
		}
		return a;
	}
	
	public ArrayList<Content> adSearch(String time, String city, String agency, String keyword,ArrayList<Content> ls) {
		ArrayList<Content> a = new ArrayList<Content>();
		//ArrayList<Content> ex = xmlparser.lc.getList();
		if(time==null && city==null && agency==null && keyword==null) {
			a = null;
		}
		a = selectYear(time,ls);
		a = selectCity(city,a);
		a = selectAgency(agency,a);
		a = selectContent(keyword,a);
		
		return a;
	}
	
	public void api(String Con) throws Exception {
		ExtractionKeywordImpl keyword = new ExtractionKeywordImpl();
		ExtractEntitySentence entity = new ExtractEntitySentence();
		this.exp = entity.ExtractPerson(Con);
		this.exo = entity.ExtractOrganization(Con);
		this.exl = entity.ExtractLocation(Con);
		this.keyword = keyword.ExtractSentenceKeyword(Con, new File("src/main/resources/stop-word-list.txt"));
	}	
}












