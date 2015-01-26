package com.global.dao;

import java.util.List;

import com.global.vo.Employee;

public interface EmployeeDao {
	//���Ա��
	public void addEmployee(Employee emp);
	
    //��Jdbc��ʽ�������
	public void saveByJdbc(String sql);

	//�޸�Ա����Ϣ����ɾ��Ա��ʱ��ʵ��ִ�е����޸Ĳ�������employee���е�flag��Ϊ1����ʾ��Ա���Ѿ���ְ
	public void updateEmployee(Employee emp);

	//��ѯ����Ա��
	public List queryAllEmployee();

	//����empID��ѯԱ��
	public Employee queryByEmpID(int empID);
	
	//����Ա����Ų�ѯ
	public List queryByEmpNO(String empno);
	
	//����Ա��ְλ��ѯ
	public List queryEmployeeByPositionID(int positionID);

	//�������͵�ID��ѯ���µ�����Ա��
	public List queryEmployeeByDeliverySpotID(int deliverySpotID);
	
   //�������͵�ID��ѯ���µ�����Ա��
	public List queryEmployeeByDeliverySpotID3(int deliverySpotID);
	
	   //�������͵�ID��ѯ���µ�����Ա��
	public List queryNotManagerEmployeeByDeliverySpotID(int deliverySpotID);
	
   //�������͵�ID��ѯ���µ�����Ա������ҳ��ʾ
	public List queryEmployeeByDeliverySpotID2(int deliverySpotID,int offset,int number);
	
  //�������͵�ID��ѯ���µ�����Ա���ļ�¼��
	public int countqueryEmployeeByDeliverySpotID2(int deliverySpotID);
	
	//�����ݿ�ȡ��ְλ�б�
	public List listPosition();
	
	//�����ݿ�ȡ�����͵��б�
	public List listDeliverySpot();
	
	//��֤Ա������Ƿ��ظ�
	public boolean check(String empNO);
	
   //����Ա����Ų�ѯ �õ�list
	public List queryByEmpNOList(String empNo);
	
	//��ȡ����Ա������Ŀ��������ְ�ģ���ɾ������Ա����
	public int countAllEmp();
}
