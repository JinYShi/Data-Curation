package com.unsw;


import java.util.ArrayList;

public class listContent {
	private ArrayList<Content> list_content = new ArrayList<Content>();
	
	public void setList_content(ArrayList<Content> list_content) {
		this.list_content = list_content;
	}
	
	public void addContent(String row_Id,//0
			String uID,//1
			String position,//2
			String address,//3
			String agency,//4
			String subheadline,//5
			String headline,//6
			String publish_date,//7
			String publish_year,//8
			String city,//9
			String state,//10
			String content,//11
			String content2,//12
			String content3,//13
			String content4,//14
			String footer_con,//15
			String contact1,//16
			String contact2,//17
			String contact3,//18
			String contact4,//19
			String category_tags,//20
			String category_tag1,//21
			String category_tag2,//22
			String category_tag3,//23
			String category_tag4,//24
			String category_tag5,//25
			String date_enter,//26
			String entered_by,//27
			String date_last_modified,//28
			String last_modified_by) {
		this.list_content.add(new Content(row_Id,//0
				uID,//1
				position,//2
				address,//3
				agency,//4
				subheadline,//5
				headline,//6
				publish_date,//7
				publish_year,//8
				city,//9
				state,//10
				content,//11
				content2,//12
				content3,//13
				content4,//14
				footer_con,//15
				contact1,//16
				contact2,//17
				contact3,//18
				contact4,//19
				category_tags,//20
				category_tag1,//21
				category_tag2,//22
				category_tag3,//23
				category_tag4,//24
				category_tag5,//25
				date_enter,//26
				entered_by,//27
				date_last_modified,//28
				last_modified_by));
	}
	
	public ArrayList<Content> getList() {
		return list_content;
	}
	public void setArrayList(ArrayList<Content> newList) {
		this.list_content = newList;
	}
	public int getSize() {
		return this.list_content.size();
	}
}
