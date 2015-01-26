package com.global.dao;

import java.util.List;
import java.util.Set;

import com.global.vo.Deliveryspot;

public interface DeliverySpotDao {
	//������͵�
	public void addDeliverySpot(Deliveryspot deliverySpot);

	//�޸����͵�
	public void updateDeliverySpot(Deliveryspot deliverySpot);

	//ɾ�����͵�
	public void deleteDeliverySpot(Deliveryspot deliverySpot);

	//�г��������͵㣬�û���ҳ��ѯ
	public List queryAllDeliverySpot(int intOffset,int munber);

	//�������͵�ID��ѯ���͵�
	public Deliveryspot queryDeliverySpotByDeliverySpotID(int deliverySpotID);

	//����ʡID��ѯ�������е����͵�
	public List queryDeliverySpotByProvinceID(int provinceID);
	
	//��province�����г����е�ʡ����
	public List queryProvinceFromProvince();
	
	//��city�����г���Ӧʡ�µ���
	public List queryCityByProvinceIDFromCity(int provinceID);
	
	//��ѯ�������͵�ļ�¼��
	public int countOfAllDeliveryspot();
	
	//��ѯ�������͵㣬���������б����ʾ
	public List queryAllDeliverySpotOfAddLine();
	
   //�������͵��Ƿ�������
	public boolean checkDSName(String name);
	
	public List queryAllDeliverySpotOfAddUser();

}