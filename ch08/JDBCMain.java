package kr.co.ch08;

import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

/*
 * ��¥ : 2019/03/07
 * �̸� : ��ö��
 * ���� : ������ JDBC �ǽ��ϱ�
 */
public class JDBCMain {

	public static void main(String[] args) throws Exception {
		
		ApplicationContext ctx = new GenericXmlApplicationContext("spring-context.xml");
		UserService user = (UserService) ctx.getBean("userServiceImpl");
		
		// insert
		UserVO vo = new UserVO();
		vo.setUid("P102");
		vo.setName("������");
		vo.setHp("010-1111-9999");
		vo.setAddr("�Ŷ�");
		vo.setPos("�븮");
		vo.setDep(102);
		
		//user.insertUser(vo);
		
		// select
		List<UserVO> list = user.selectUserList();
		for (UserVO u : list) {
			System.out.println("====================");
			System.out.println("uid : "+u.getUid());
			System.out.println("name : "+u.getName());
			System.out.println("rdate : "+u.getRdate());
			System.out.println("--------------------");
		}
		
		UserVO userOne = user.selectUserOne("P102");
		System.out.println("----Select User ONE-----");
		System.out.println("uid : "+userOne.getUid());
		System.out.println("name : "+userOne.getName());
		System.out.println("rdate : "+userOne.getRdate());
		System.out.println("--------------------");
		
		
		// update
		user.updateUser();
		
		// delete
		user.deleteUser();
		
	}

}