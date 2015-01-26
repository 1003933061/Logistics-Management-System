package com.global.dao;

import java.util.List;
import java.util.Set;

import com.global.vo.Receipt;

public interface ReceiptDao {
	//��ӽ��ӵ�
	public void addReceipt(Receipt receipt);

	//ɾ�����ӵ�
	public void deleteReceipt(Receipt receipt);

	//��ѯ���н��ӵ�
	public List queryAllReceipt();
	
	//����ID��ѯ���ӵ�
	public Receipt queryReceiptByReceiptID(int receiptID);
	
	//�������͵�ID��ѯ���µ����н��ӵ�
	public Set queryReceiptByDeliverySpotID(int deliverySpotID);
	
	//�������͵�ID��ѯ���µ����н��ӵ�����ҳ��
	public List queryReceiptByDeliverySpotID2(int deliverySpotID,int intOffset,int munber);
	
	//��ȡ���͵������н��ӵ���Ŀ(��ҳ)
	public int countAllReceiptByDeliverySpotID(int deliverySpotID);
	
	//	�������͵�ID��ѯ���µ�����Ͷ�ݵ�����ҳ��
	public List queryTouDiDanByDeliverySpotID(int deliverySpotID,int intOffset,int munber);
	
	//��ȡ���͵�������Ͷ�ݵ���Ŀ(��ҳ)
	public int countAllTouDiDanByDeliverySpotID(int deliverySpotID);
	
	//���ݳ��ƺŲ�ѯ���ӵ�
	public List queryReceiptByCarNO(String carNO);
	
	//ͨ�����ӵ��Ų�ѯ���ӵ�
	public Receipt queryReceiptByReceiptNo(String receiptNo);
	
	//	ͨ��Ͷ�ݵ��Ų�ѯ���ӵ�
	public Receipt queryReceiptByReceiptNo2(String receiptNo);
	
	//��ȡͶ��Ա�б���߽���Ա�б�
	public List queryEmployeeByDIDandPosition(int dsID,int positionID);
	
	//ͨ��carNo��ѯ�ó��Ƿ����
	public boolean checkCarNo(String carNo);
	
//	ͨ��orderNo��ѯ�ö����Ƿ����
	public boolean checkOrderNo(String orderNo);
	
	//���н���ʱ�����ĳ�����״̬Ϊ;��
	public void updateCarState(String carNo);
 	
}