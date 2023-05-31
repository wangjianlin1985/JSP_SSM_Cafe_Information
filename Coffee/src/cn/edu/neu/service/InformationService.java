package cn.edu.neu.service;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Information;

public interface InformationService {

	List<Information> getAllInformation();


	Page<Information> getAdminSearchInformations(String informationId,String informationName);


	void delete(String informationId);


	Information getInformationById(String informationId);


/*	void doHandleInformation(Information information);*/


	void addInformation(Information information);


	void updateInformation(Information information);


	




	

}
