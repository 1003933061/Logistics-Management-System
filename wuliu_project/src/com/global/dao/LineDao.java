package com.global.dao;

import java.util.List;

import com.global.vo.Carstate;
import com.global.vo.Line;

public interface LineDao {
	//�����·
	public void addLine(Line line);

	//ɾ����·
	public void deleteLine(Line line);

	//��ѯ������·�����ڷ�ҳ��ѯ
	public List queryAllLine(int intOffset,int munber);
	
	//����lineID��ѯ��·
	public Line querylineByLineID(int lineID);

	//���ݳ���״̬ID��ѯ
	public Carstate querylineByCarStateID(int carStateID);
	
	//����lineID��ѯ����·���г���
	public List queryCarByLineID(int lineID);
	
	//��car���в���Ѿ��䳵����·id
	public List queryLineIDFromCar();
	
	//��ѯ������·��¼��
	public int countOfAllLine();
	
	//��ѯ�����Ѿ��䱸�˳�������·
	public List queryAllLineMatchingLine();
	
   public List queryCarMatchingLine(int offset,int number);
   
   public int countqueryCarMatchingLine();
   
   public List queryCarNotMatchingLine();
}