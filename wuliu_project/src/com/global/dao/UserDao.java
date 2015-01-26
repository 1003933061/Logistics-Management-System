package com.global.dao;

import java.util.List;

import com.global.vo.User;

public interface UserDao {
	//����û�
	public void addUser(User user);
	
	//�޸��û�
	public void updateUser(User user);

	//ɾ���û�
	public void deleteUser(User user);
	
	//��½
	public User login(String username,String password,int powerID);

	//��ѯ�����û�
	public List queryAllUser();
	
	//�����û�ID��ѯ�û�
	public User queryUserByUserID(int userID);

	//����Ա��ID��ѯ�û�
	public User queryuserByEmpID(int empID);

	//����Ȩ��ID��ѯ�û�
	public List queryUserByPowerID(int powerID);
	
	//�������͵�ID��ѯ�û�
	public List queryUserByDeliverySpotID(int deliverySpotID);

	//�������͵�ID��ѯ�û�����ҳ��ʾ
	public List queryUserByDeliverySpotID2(int deliverySpotID,int offset,int number);
	
   //�������͵�ID��ѯ�û��ļ�¼��
	public int countqueryUserByDeliverySpotID2(int deliverySpotID);
	
	//��Power���в�ѯ����Ȩ��
	public List queryPowerFromPower();
	
	public List queryUserByDeliveryspotidFromUser(int deliveryspotid);
	
	public boolean checkUsername(String username);

}
