package com.unsw;

import java.io.File;
import java.io.IOException;

import org.apache.commons.digester3.Digester;
import org.xml.sax.SAXException;

public class XMLparser {
	public Digester digester = new Digester();
	public listContent lc = new listContent();
	
	public XMLparser() {
		try {
			this.Xparser();
		} catch(IOException e) {
			e.printStackTrace();
		} catch (SAXException e) {
			e.printStackTrace();
		}
		
	}
	
	public void Xparser() throws IOException, SAXException {

		digester.setValidating(false);
		digester.push(lc);
		digester.addCallMethod("response/roww/row", "addContent",30);
		digester.addCallParam("response/roww/row/",0,"_id");
		digester.addCallParam("response/roww/row/",1,"_uuid");
		digester.addCallParam("response/roww/row/",2,"_position");
		digester.addCallParam("response/roww/row/",3,"_address");
		digester.addCallParam("response/roww/row/agency",4);
		digester.addCallParam("response/roww/row/subheadline",5);
		digester.addCallParam("response/roww/row/headline",6);
		digester.addCallParam("response/roww/row/publish_date",7);
		digester.addCallParam("response/roww/row/publish_year",8);
		digester.addCallParam("response/roww/row/city",9);
		digester.addCallParam("response/roww/row/state",10);
		digester.addCallParam("response/roww/row/content",11);
		digester.addCallParam("response/roww/row/content2",12);
		digester.addCallParam("response/roww/row/content3",13);
		digester.addCallParam("response/roww/row/content4",14);
		digester.addCallParam("response/roww/row/footer_content",15);
		digester.addCallParam("response/roww/row/contact1",16);
		digester.addCallParam("response/roww/row/contact2",17);
		digester.addCallParam("response/roww/row/contact3",18);
		digester.addCallParam("response/roww/row/contact4",19);
		digester.addCallParam("response/roww/row/category_tags",20);
		digester.addCallParam("response/roww/row/category_tag1",21);
		digester.addCallParam("response/roww/row/category_tag2",22);
		digester.addCallParam("response/roww/row/category_tag3",23);
		digester.addCallParam("response/roww/row/category_tag4",24);
		digester.addCallParam("response/roww/row/category_tag5",25);
		digester.addCallParam("response/roww/row/date_entered",26);
		digester.addCallParam("response/roww/row/entered_by",27);
		digester.addCallParam("response/roww/row/date_last_modified",28);
		digester.addCallParam("response/roww/row/last_modified_by",29);
		lc = (listContent) digester.parse(new File("src/main/resources/content.xml"));

//		try {
//			lc = (listContent) digester.parse(new File("src/main/resources/content.xml"));
//		} catch(IOException e) {
//			e.printStackTrace();
//		} catch (SAXException e) {
//			e.printStackTrace();
//		}
//		
//		for(Content c: lc.getList()){
//			System.out.println("sdsd");
//			System.out.println(c.getAddress());
//		}
	}
	
	public listContent getList() {
		return this.lc;
	}

	
}
