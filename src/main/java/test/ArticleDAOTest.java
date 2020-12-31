package test;

import static org.junit.Assert.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import dao.impl.ArticleDAO;
import model.Article;
import model.Category;
import model.service.ICategoryService;
import model.service.impl.CategoryService;

public class ArticleDAOTest {
	private static ArticleDAO ar;
	private static ICategoryService catService;
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		ar = new ArticleDAO();
		catService = new CategoryService();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Test
	public void testGetLastestArtical() {
		int quantity = 3;
		List<Article> rs = ar.getLastestArticle(quantity, 3);
		for(Article a: rs){
			System.out.println(a.getTitle());
		}
		assertTrue(rs.size()==quantity);
	}
	
	@Test
	public void testGetArticleByCatId(){
		List<Category> categories = catService.listCategory();
		Map<Category, List<Article>> params = new HashMap<>();
		for(Category cat :categories){
			List<Article> lists = ar.getArticleByCategoryId(cat, 3);
			
			if(lists!=null && lists.size()>0){
//				System.out.println("Category: " + cat.getName());
//				for(Article a: lists){
//					System.out.println( a.getTitle() );
//				}
//				System.out.println("----------");
				params.put(cat, lists);
			}
			
		}
		
		
		for (Map.Entry<Category, List<Article>> entry : params.entrySet()) {
	        System.out.println("CATEGORY : " + entry.getKey().getName());
	        for(Article a: entry.getValue()){
	        	System.out.println(a.getTitle());
	        }
	        System.out.println("-----------");
	    }
		
		
		assertTrue(true);
		
	}

}
