package com.global.dao;

import java.util.List;

import com.global.vo.Linedetaile;

public interface LineDetaileDao {
	//�����·��ϸ��Ϣ
	public void addLineDetaile(Linedetaile lineDetaile);

	//ɾ����·��ϸ��Ϣ
	public void deleteLineDetaile(Linedetaile lineDetaile);
	
	//����LineID��ѯ������·�ϵ���ϸ��Ϣ
	public List queryLineDetaileByLineID(int lineID);
}