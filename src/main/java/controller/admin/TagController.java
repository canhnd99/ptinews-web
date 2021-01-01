package controller.admin;

import java.io.IOException;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Tag;
import model.User;
import model.service.impl.TagService;
import utils.FormUtil;

@WebServlet(urlPatterns = { "/admin/tags" })
public class TagController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static TagService tagService;

	public TagController() {
		super();
		tagService = new TagService();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String action = request.getParameter("action");
		String tagId = request.getParameter("tagId");

		if (action.equalsIgnoreCase("create")) {
			request.setAttribute("action", action);
			showFormTag(request, response);
		} else if (action.equalsIgnoreCase("edit") && tagId != null) {

			Tag tag = tagService.findTagById(tagId);

			if (tag != null) {
				request.setAttribute("action", action);
				request.setAttribute("tagId", tagId);
				request.setAttribute("tag", tag);
				showFormTag(request, response);
			} else {
				request.setAttribute("err_message", "Tag not found!");
				showListTag(request, response);
			}
		} else if (action.equalsIgnoreCase("delete") && tagId != null) {
			Tag tag = tagService.findTagById(tagId);
			if (tag != null) {
				tagService.deleteTagById(tagId);
				request.setAttribute("success_message", "Tag <b>" + tag.getName() + "</b> has been deleted!");
			} else
				request.setAttribute("err_message", "Tag with ID = " + tagId + " not found!");
			showListTag(request, response);
		} else {
			showListTag(request, response);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String action = request.getParameter("action");

		Tag tag = FormUtil.toModel(Tag.class, request);
		User loggedUser = (User) request.getSession().getAttribute("user");

		boolean check = (tag != null && loggedUser != null && tag.getName() != null && loggedUser.getIsAdmin()); // review

		if (action.equalsIgnoreCase("insert") && check) {
			boolean checkExisted = tagService.checkExisted(tag.getName());
			
			if (!checkExisted) {
				tag.setUser(loggedUser);
				tagService.insertTag(tag);
				request.setAttribute("success_message", "Tag <b> " + tag.getName() + "</b> has been created.");
			} else {
				request.setAttribute("err_message", "Tag <b>" + tag.getName() + "</b> already existed!");
			}
		} else if (action.equalsIgnoreCase("update") && check) {
			String tagId = request.getParameter("tagId");
			Tag existedTag = tagService.findTagById(tagId);
			
			if (existedTag != null) {
				existedTag.setLastModified(new Date(System.currentTimeMillis()));
				existedTag.setName(tag.getName());
				boolean updated = tagService.updateTag(existedTag);

				if (updated)
					request.setAttribute("success_message", "Tag updated successfully!");
				else
					request.setAttribute("err_message", "Some error happend when update. Please check again!");

			} else {
				request.setAttribute("err_message", "Tag not found!");
			}
		} else {
			request.setAttribute("err_message", "Some error happend. Please check again!");
		}
		showListTag(request, response);
	}

	public void showFormTag(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/tag_form.jsp");
		rd.forward(request, response);
	}

	public void showListTag(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		List<Tag> tags = tagService.listAllTag();
		request.setAttribute("tags", tags);
		RequestDispatcher rd = request.getRequestDispatcher("/views/admin/tag_list.jsp");
		rd.forward(request, response);
	}

}
