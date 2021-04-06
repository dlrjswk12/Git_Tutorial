//package com.a.b.service;
//
//import java.sql.SQLException;
//import java.util.ArrayList;
//import java.util.Collections;
//import java.util.List;
//
//import org.apache.ibatis.session.SqlSession;
//import org.springframework.ui.Model;
//
//import com.a.b.dao.BoardDao;
//import com.a.b.dto.Board;
//
//public class BoardSearchTitleService implements IBoarderService {
//
//	private SqlSession sqlSession = Constant.sqlSession;
//	private static final int MESSAGE_COUNT_PER_PAGE = 10;
//	public BoardSearchTitleService() {}
//	
//	@Override
//	public void execute(Model model) {
//		
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		ArrayList<Board> title = dao.titlesearch();
//		model.addAttribute("titlesearch", title);
//		
//	}
//	public List<Board> selectList(int a,int z) throws SQLException{
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		ArrayList<Board> title =  dao.titlesearch();
//		return title.subList(a-1,z);
//	}
//	public MessageListView getMessageListView(int pageNumber) throws SQLException{
//		int currentPageNumber = pageNumber;
//		BoardDao dao = sqlSession.getMapper(BoardDao.class);
//		int messageTotalCount = dao.titlesearch().size();
//		List<Board> messageList2 = null;
//		int firstRow =0;
//		int endRow =0;
//		if(messageTotalCount>0){
//			firstRow = (pageNumber-1)*MESSAGE_COUNT_PER_PAGE+1;
//			endRow = firstRow+MESSAGE_COUNT_PER_PAGE-1;
//			if(endRow>messageTotalCount)endRow=messageTotalCount;
//			messageList2 =selectList(firstRow,endRow);
//		}else{
//			currentPageNumber =0;
//			messageList2 = Collections.emptyList();
//		}
//		return new MessageListView(null, null, messageList2, null, null, null, messageTotalCount,currentPageNumber,MESSAGE_COUNT_PER_PAGE,firstRow,endRow);
//	}
// 
//}
