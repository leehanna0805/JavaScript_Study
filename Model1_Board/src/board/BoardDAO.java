package board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import common.JDBCUtil;

public class BoardDAO {
	// DB관련 변수 선언
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;

	// 전체 게시글 목록 조회 method
	// searchField = '제목'으로 검색할껀지, '작성자'로 검색할껀지. searchText=검색 텍스트
	public List<BoardDO> getBoardList(String searchField, String searchText){ 
		System.out.println("===> getBoardList() 기능 처리됨!");
		
		List<BoardDO> boardList = new ArrayList<BoardDO>(); //가변 배열 객체 생성
		
		try {
			conn = JDBCUtil.getConnection();
			
			// 게시물 검색 시 '제목' or '작성자'로 검색조건 제시하는 SQL만들기
			// 검색 조건 없으면 전체를 최신순 정렬해서 보여줌. 검색 조건 있으면 조건맞게 정렬해서 보여줌.
			String where="";
			
			if(searchField != null && searchText != null){
				where = "where " + searchField + " like '%" + searchText + "%'";
			
			}
			
			String Condition_SQL = "select * from board " + where + " order by seq desc;";
			pstmt = conn.prepareStatement(Condition_SQL);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardDO board = new BoardDO();
				board.setSeq(rs.getInt("SEQ"));
				board.setTitle(rs.getString("TITLE"));
				board.setWriter(rs.getString("WRITER"));
				board.setContent(rs.getString("CONTENT"));
				board.setRegDate(rs.getDate("REGDATE"));
				board.setCnt(rs.getInt("CNT"));
				
				boardList.add(board);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			JDBCUtil.close(rs,pstmt,conn);
		}
		return boardList;
		
	}
}
