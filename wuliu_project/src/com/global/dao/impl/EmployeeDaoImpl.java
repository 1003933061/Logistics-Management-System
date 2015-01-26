package com.global.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;

import com.global.dao.EmployeeDao;
import com.global.db.HibernateSessionFactory;
import com.global.vo.Employee;

public class EmployeeDaoImpl extends BaseDaoImpl implements EmployeeDao {
   //���Ա��
	public void addEmployee(Employee emp) {
		super.save(emp);

	}

	public List queryAllEmployee() {
		// TODO Auto-generated method stub
		return null;
	}

	public Employee queryByEmpID(int empID) {
		// TODO Auto-generated method stub
		return null;
	}
        //ͨ��Ա����Ų�ѯԱ����Ϣ
	public List queryByEmpNO(String empNO) {
		String hql = "from Employee as e where e.empno='"+empNO+"' and e.flag="+0;
		return super.list(hql);
	}
        //ͨ�����͵�ID��ѯԱ��
	public List queryEmployeeByDeliverySpotID(int deliverySpotID) {
		String hql = "from Employee as e where e.deliveryspot.deliveryspotid="+deliverySpotID +" and e.flag="+0 + " order by e.empid desc";
		return  super.list(hql);
	}

	public List queryEmployeeByPositionID(int positionID) {
		return null;
		
	}
  //�޸�Ա����Ϣ����ɾ��Ա��ʱ��ʵ��ִ�е����޸Ĳ�������employee���е�flag��Ϊ1����ʾ��Ա���Ѿ���ְ
	public void updateEmployee(Employee emp) {
		super.update(emp);

	}
	//�����ݿ��ȡְλ�б�
	public List listPosition() {
		String hql = " from Position ";
		return super.list(hql);
	}
      //	�����ݿ��ȡ���͵��б�
	public List listDeliverySpot() {
		String hql = " from Deliveryspot where flag=0";
		return super.list(hql);
	}
      //	��֤Ա������Ƿ��ظ�
	public boolean check(String empNO) {
		 String hql = "from Employee as e where e.empno='"+empNO +"'";
		List list = super.list(hql);
		 if(list.size()>0)
		 {
			 return true;
		 }
		return false;
	}

	public List queryByEmpNOList(String empNo) {
		String hql = "from Employee as e where e.empno='"+empNo+"' and e.flag=0" + " order by e.empid desc";
		return  super.list(hql);
	}

	public int countAllEmp() {
		String hql = "from Employee";
		List l = super.list(hql);
		return l.size();
	}

	public List queryEmployeeByDeliverySpotID2(int deliverySpotID, int offset, int number) {
		String hql = "from Employee as e where e.deliveryspot.deliveryspotid="+deliverySpotID +" and e.flag="+0 + " order by e.empid desc";
		Session session = HibernateSessionFactory.getSession();
		List list = session.createQuery(hql).setFirstResult(offset).setMaxResults(number).list();
		HibernateSessionFactory.closeSession();
		return list;
	}

	public int countqueryEmployeeByDeliverySpotID2(int deliverySpotID) {
		String hql = "from Employee as e where e.deliveryspot.deliveryspotid="+deliverySpotID +" and e.flag="+0 + " order by e.empid desc";
		return  super.list(hql).size();
	}

	public List queryEmployeeByDeliverySpotID3(int deliverySpotID) {
		String hql = "from Employee as e where e.deliveryspot.deliveryspotid="+deliverySpotID +" and e.flag="+0 + " and e.position.positionid=1 order by e.empid desc";
		return  super.list(hql);
	}

	public List queryNotManagerEmployeeByDeliverySpotID(int deliverySpotID) {
		String hql = "from Employee as e where e.deliveryspot.deliveryspotid="+deliverySpotID +" and e.flag="+0 + " and e.position.positionid =3 order by e.empid desc";
		return  super.list(hql);
	}
}
