package com.global.dao;

import java.util.List;

import com.global.vo.Car;

public interface CarDao {
	 //��ӳ���
	public void addCar(Car car);
	
    //�޸ĳ���
	public void updateCar(Car car);
	
    //ɾ������
	public void deleteCar(Car car);
	
    //�г����г���
	public List queryAllCar();
	
	//����carID��ѯ����
	public Car queryCarByCarID(int carID);
	
	//���ݳ��ƺŲ�ѯ����
	public List queryCarByCarNO(String carNO);

	//���ݳ�����Ӫ֤�Ų�ѯ����
	public List queryCarByWorkNO(String workNO);
	
	//����˾����Ų�ѯ����
	public Car queryCarByEmpID(int empID);
	
	//���ݳ������Ͳ�ѯ����
	public List queryCarByCarTypeID(int carTypeID);

	//���ݳ���״̬��ѯ����
	public List queryCarByCarStateID(int carStateID);
	
   //���ݳ���״̬��ѯ����
	public List queryCarByCarStateID2(int carStateID,int intOffset,int munber);
	
    //���ݳ���״̬��ѯ�����ļ�¼��
	public int countqueryCarByCarStateID2(int carStateID);
	
	//��carstate�����г�����״̬
	public List queryCarStateFromCarState();
	
	//�г��������͵�����
	public List listAllDeliveryspot();
	
	//�г�����˾��
	public List listAllDriver();
	
	//��������״̬
	public void update(Integer carid,Integer carstateid);
	
	//��֤���ƺ��Ƿ��ظ�
	public boolean checkCarNO(String carNO);
	
	//��֤��Ӫ֤���Ƿ��ظ�
	public boolean checkWorkNO(String workNO);
}