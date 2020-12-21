package utils;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class AuthorizationFilter implements Filter {

	@SuppressWarnings("unused")
	private ServletContext context;
	
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		this.context = filterConfig.getServletContext();
	}

	@Override
	public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
			throws IOException, ServletException {
		HttpServletRequest request = (HttpServletRequest) servletRequest;
		HttpServletResponse response = (HttpServletResponse) servletResponse;
		request.setCharacterEncoding("UTF-8");
		String uri = request.getRequestURI();
		String url = uri.substring(request.getContextPath().length(), uri.length());

		if (url.startsWith("/admin")) {
//			UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
//			if (user != null) {
//				if (user.getRole().getCode().equals(SystemConstant.ADMIN_CODE)) {
//					filterChain.doFilter(servletRequest, servletResponse);
//				} else if (user.getRole().getCode().equals(SystemConstant.USER_CODE)) {
//					response.sendRedirect(
//							request.getContextPath() + "/login?action=login&message=not_permission&alert=danger");
//				}
//			} else {
//				response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=danger");
//			}
		} else if (url.startsWith("/registration")) {
//			UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
//			if (user != null) {
//				if (user.getRole().getCode().equals(SystemConstant.ADMIN_CODE)) {
//					response.sendRedirect(
//							request.getContextPath() + "/login?action=login&message=not_permission&alert=danger");
//				} else if (user.getRole().getCode().equals(SystemConstant.USER_CODE)) {
//					filterChain.doFilter(servletRequest, servletResponse);
//				}
//			} else {
//				response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=danger");
//			}
		} else if (url.startsWith("/measurement")) {
//			boolean check = RegistrationController.check;
//			UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
//			if (user != null) {
//				if (user.getRole().getCode().equals(SystemConstant.ADMIN_CODE)) {
//					response.sendRedirect(
//							request.getContextPath() + "/login?action=login&message=not_permission&alert=danger");
//				} else if (user.getRole().getCode().equals(SystemConstant.USER_CODE)) {
//					if (check == false) {
//						response.sendRedirect(request.getContextPath()
//								+ "/registration?action=registration&message=not_registration&alert=danger");
//					} else {
//						filterChain.doFilter(servletRequest, servletResponse);
//						RegistrationController.check = false;
//					}
//				}
//			} else {
//				response.sendRedirect(request.getContextPath() + "/login?action=login&message=not_login&alert=danger");
//			}
		} else if(url.startsWith("/confirmation")) {
//			boolean check = ConfirmationController.check;
//			UserModel user = (UserModel) SessionUtil.getInstance().getValue(request, "USERMODEL");
//			if(user != null){
//				if(user.getRole().getCode().equals(SystemConstant.ADMIN_CODE)){
//					response.sendRedirect(
//							request.getContextPath() + "/login?action=login&message=not_permission&alert=danger");
//				}else if(user.getRole().getCode().equals(SystemConstant.USER_CODE)){
//					if(check == false){
//						response.sendRedirect(request.getContextPath()+ "/error");
//					}else{
//						filterChain.doFilter(servletRequest, servletResponse);
//						ConfirmationController.check = false;
//					}
//				}
//			}
		} else {
			filterChain.doFilter(servletRequest, servletResponse);
		}
	}

	@Override
	public void destroy() {

	}
}
