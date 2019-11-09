package blog.action.board;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blog.action.Action;
import blog.dao.BoardDao;
import blog.dao.UserDao;
import blog.model.Board;
import blog.model.User;
import blog.util.Script;

public class BoardWriteAction implements Action{
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		User user = (User)request.getSession().getAttribute("user");
		String title  = request.getParameter("title");
		String content = request.getParameter("content");
		
		Board board = new Board();
		board.setUserId(user.getId());
		board.setTitle(title);		
		board.setContent(content);
		
		//널 처리 필요
		BoardDao dao = new BoardDao();
		int result = dao.save(board);
		
		if(result == 1) {
			//글 작성 성공
			response.sendRedirect("index.jsp");
		}else {
			//글 작성 실패
			Script.alert(response, "글 작성에 실패하였습니다");
			Script.back(response);
		}
		
		
	}
}
