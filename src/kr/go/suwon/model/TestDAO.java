package kr.go.suwon.model;

public class TestDAO {

	
	
		public TestDTO testDataOne(String name){
			TestDTO dto = new TestDTO();
			try{
				con = Maria.getConnection();
				pstmt = con.prepareStatement(Maria.TEST_SELECT_ONE);
				pstmt = setString(1, name);
				rs = pstmt.executeQuery();
				if(rs.next()){
					dto.setName(rs.getString("name"));
					dto.setPoint(rs.getInt("point"));
				}
			} catch(Exception e){
				System.out.println("잘못된 연산 및 요청으로 인해 목록을 불러오지 못했습니다.");
			} finally {
				Maria.close(rs, pstmt, con);
			}
			return dto;
		}
		
	
