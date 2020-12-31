package test;

import static org.junit.Assert.*;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import dao.ICommentDAO;
import dao.impl.CommentDAO;

public class CommentDAOTest {

	private static ICommentDAO dao;
	
	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		dao = new CommentDAO();
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
	}

	@Test
	public void testListAllComment() {
		
	}
	
	@Test
	
	public void testCount(){
		int rs = 0; 
		rs = dao.countComment();
		System.out.println(rs);
		assertEquals(rs, 22);
	}

}
