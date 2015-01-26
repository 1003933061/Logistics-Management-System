package com.global.dao;

import java.util.List;

public interface ReportDao {
	//��ѯ�ܲ��ı���
	public List queryHQ(String fromTime,String toTime);
	
    // ��ѯ�ܲ�����Ӫҵ��
	public double queryHQTurnover(String fromTime,String toTime);

    //��ѯ���͵�ı���
	public List queryDeliverySpot(String fromTime,String toTime,int deliverySpotID);
	
   //��ѯ���͵����Ӫҵ��
	public double queryDeliverySpotTurnover(String fromTime,String toTime,int deliverySpotID);

}
