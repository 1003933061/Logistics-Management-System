package com.global.dao;

import java.util.List;
import java.util.Set;

import com.global.vo.Receiptdetaile;

public interface ReceiptDetaileDao {
	//��ӽ��ӵ���ϸ��Ϣ
	public void addReceiptDetaile(Receiptdetaile receiptDetaile);

	//ɾ�����ӵ���ϸ��Ϣ
	public void deleteReceiptDetaile(Receiptdetaile receiptDetaile);

	//���ݽ��ӵ�ID��ѯ���ӵ���ϸ��Ϣ
	public Set queryReceiptDetaileByReceiptID(int receiptID);
	
//	���ݽ��ӵ�ID��ѯ���ӵ���ϸ��Ϣ
	public List queryReceiptDetaileByReceiptID2(int receiptID,int intOffset,int munber);
	
	//��ҳ ��ȡ���ӵ���ϸ��Ŀ��
	public int countReceiptDetaileByReceiptID(int receiptID);

}