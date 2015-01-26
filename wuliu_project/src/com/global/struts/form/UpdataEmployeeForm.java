package com.global.struts.form;

import javax.servlet.http.HttpServletRequest;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 11-24-2008
 * 
 * XDoclet definition:
 * @struts.form name="employeeForm"
 */
public class UpdataEmployeeForm extends ActionForm {
	/*
	 * Generated fields
	 */

	/** gender property */
	private String gender;

	/** address property */
	private String address;

	/** empID property */
	private String empID;

	/** salary property */
	private String salary;

	/** startWordTime property */
	private String startWordTime;

	/** empNO property */
	private String empNO;

	/** cardID property */
	private String cardID;

	/** email property */
	private String email;

	/** name property */
	private String name;

	/** tel property */
	private String tel;

	/** positionID property */
	private String positionID;

	/** deliverySpotID property */
	private String deliverySpotID;

	/** birthday property */
	private String birthday;

	/*
	 * Generated Methods
	 */

	/** 
	 * Method validate
	 * @param mapping
	 * @param request
	 * @return ActionErrors
	 */
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {
		// TODO Auto-generated method stub
		return null;
	}

	/** 
	 * Method reset
	 * @param mapping
	 * @param request
	 */
	public void reset(ActionMapping mapping, HttpServletRequest request) {
		// TODO Auto-generated method stub
	}

	/** 
	 * Returns the gender.
	 * @return String
	 */
	public String getGender() {
		return gender;
	}

	/** 
	 * Set the gender.
	 * @param gender The gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}

	/** 
	 * Returns the address.
	 * @return String
	 */
	public String getAddress() {
		return address;
	}

	/** 
	 * Set the address.
	 * @param address The address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}

	/** 
	 * Returns the empID.
	 * @return String
	 */
	public String getEmpID() {
		return empID;
	}

	/** 
	 * Set the empID.
	 * @param empID The empID to set
	 */
	public void setEmpID(String empID) {
		this.empID = empID;
	}

	/** 
	 * Returns the salary.
	 * @return String
	 */
	public String getSalary() {
		return salary;
	}

	/** 
	 * Set the salary.
	 * @param salary The salary to set
	 */
	public void setSalary(String salary) {
		this.salary = salary;
	}

	/** 
	 * Returns the startWordTime.
	 * @return String
	 */
	public String getStartWordTime() {
		return startWordTime;
	}

	/** 
	 * Set the startWordTime.
	 * @param startWordTime The startWordTime to set
	 */
	public void setStartWordTime(String startWordTime) {
		this.startWordTime = startWordTime;
	}

	/** 
	 * Returns the empNO.
	 * @return String
	 */
	public String getEmpNO() {
		return empNO;
	}

	/** 
	 * Set the empNO.
	 * @param empNO The empNO to set
	 */
	public void setEmpNO(String empNO) {
		this.empNO = empNO;
	}

	/** 
	 * Returns the cardID.
	 * @return String
	 */
	public String getCardID() {
		return cardID;
	}

	/** 
	 * Set the cardID.
	 * @param cardID The cardID to set
	 */
	public void setCardID(String cardID) {
		this.cardID = cardID;
	}

	/** 
	 * Returns the email.
	 * @return String
	 */
	public String getEmail() {
		return email;
	}

	/** 
	 * Set the email.
	 * @param email The email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}

	/** 
	 * Returns the name.
	 * @return String
	 */
	public String getName() {
		return name;
	}

	/** 
	 * Set the name.
	 * @param name The name to set
	 */
	public void setName(String name) {
		this.name = name;
	}

	/** 
	 * Returns the tel.
	 * @return String
	 */
	public String getTel() {
		return tel;
	}

	/** 
	 * Set the tel.
	 * @param tel The tel to set
	 */
	public void setTel(String tel) {
		this.tel = tel;
	}

	/** 
	 * Returns the positionID.
	 * @return String
	 */
	public String getPositionID() {
		return positionID;
	}

	/** 
	 * Set the positionID.
	 * @param positionID The positionID to set
	 */
	public void setPositionID(String positionID) {
		this.positionID = positionID;
	}

	/** 
	 * Returns the deliverySpotID.
	 * @return String
	 */
	public String getDeliverySpotID() {
		return deliverySpotID;
	}

	/** 
	 * Set the deliverySpotID.
	 * @param deliverySpotID The deliverySpotID to set
	 */
	public void setDeliverySpotID(String deliverySpotID) {
		this.deliverySpotID = deliverySpotID;
	}

	/** 
	 * Returns the birthday.
	 * @return String
	 */
	public String getBirthday() {
		return birthday;
	}

	/** 
	 * Set the birthday.
	 * @param birthday The birthday to set
	 */
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
}