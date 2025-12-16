package kr.co.sist.emp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import kr.co.sist.dao.DbConn;

public class EmployeeDAO {
	private static EmployeeDAO empDAO;
	
	private EmployeeDAO() {
	}
	
	public static EmployeeDAO getInstance() {
		if(empDAO == null) {
			empDAO=new EmployeeDAO();
		}//end if
		
 		return empDAO;
	}//getInstance

	public List<DeptDTO> selectAllDept() throws SQLException {
		List<DeptDTO> list=new ArrayList<DeptDTO>();
		
		DbConn dbCon=DbConn.getInstance("jdbc/dbcp");
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
			String selectAllDept="select deptno,dname from dept";
			pstmt=con.prepareStatement(selectAllDept);
		//5. 바인드변수에 값 설정
			
		//6. 조회결과 얻기
			DeptDTO dDTO=null;
			rs=pstmt.executeQuery();
			
			while( rs.next() ) {
				dDTO=new DeptDTO();
				dDTO.setDeptno(rs.getInt("deptno"));			
				dDTO.setDname(rs.getString("dname"));			
				list.add(dDTO);
			}
} finally {
		//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}
		return list;
	}//selectAllDept
	
	public List<EmpDTO> selectEmp(int deptno) throws SQLException {
		List<EmpDTO> list=new ArrayList<EmpDTO>();
		
		DbConn dbCon=DbConn.getInstance("jdbc/dbcp");
		
		Connection con=null;
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		
		try {
		//1. JNDI 사용객체 생성
		//2. DataSource 얻기
		//3. Connection 얻기
			con=dbCon.getConn();
		//4. 쿼리문 생성객체 얻기
		//5. 바인드변수에 값 설정
		//6. 조회결과 얻기
		} finally {
		//7. 연결 끊기
			dbCon.dbClose(rs, pstmt, con);
		}
		return list;
	}//selectAllDept
	
}//class
