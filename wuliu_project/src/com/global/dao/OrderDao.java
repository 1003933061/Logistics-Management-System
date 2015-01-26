package com.global.dao;

import java.util.List;

import com.global.vo.Order;


public interface OrderDao {
	//��д����
	public void addOrder(Order order);
	
    //��Jdbc��ʽ�������
	public void saveByJdbc(String sql);
	
	//�޸Ķ�����Ϣ
	public void updateOrder(Order order);
	
	//ɾ������
	public void deleteOrder(Order order);

	//��ѯ���ж���
	public List queryAllOrder();

	//����orderID��ѯ����
	public Order queryOrderByOrderID(int orderID);

	//���ݶ����Ų�ѯ����
	public Order queryOrderByOrderNO(String orderNO);

	//��ѯĳ��ʱ��Ķ���
	public List queryOrderByCreateTime(String fromCreateTime,
			String ToCreateTime,int offset,int number);
	
    //��ѯĳ��ʱ��Ķ����ܵļ�¼����*/
	public int countqueryOrderByCreateTime(String fromCreateTime,
			String ToCreateTime);

	//��������״̬��ѯ����
	public List queryOrderByOrderStateID(int orderStateID,int offset,int number);
	
	/*���㶩��״̬��ѯ�ܵļ�¼����*/
	public int countqueryOrderByOrderStateID(int orderStateID);
	
	//�������͵�ID��ѯ���µ����ж���
	public List queryOrderByDeliverySpotID(int deliverySpotID,int offset,int number);
	
	//��orderstate�����г����ж���״̬
	public List queryOrderStateFromOrderState();
	
//	�������͵�ID��ѯ���µ����ж���
	public List queryOrderByDeliverySpotID(int deliverySpotID);
	
	
	public int countqueryOrderByDeliverySpotID(int deliverySpotID);
	
}
