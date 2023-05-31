package cn.edu.neu.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.mapper.InformationMapper;
import cn.edu.neu.model.Information;
import cn.edu.neu.service.InformationService;
@Service
@Transactional
public class InformationServiceImpl implements InformationService{
	 @Autowired
	  private InformationMapper mapper;
	
	

	@Override
	public Page<Information> getAdminSearchInformations(String informationId,String informationName) {
	    String[] informationNames = null;
	    if (informationName != null)
	      informationNames = informationName.split(" ");
	    Page<Information> page = new Page<Information>(15);
	    Map<String, Object> m = new HashMap<String, Object>();
	    m.put("informationId", informationId);
	    m.put("informationNames",informationNames);
	    System.out.println("=========="+m);
	    page.setParams(m);
	    List<Information> informationList = mapper.findInformationBySearchKeyword(page);
	    page.setList(informationList);
	    return page;
	  }



	@Override
	public List<Information> getAllInformation() {
		// TODO Auto-generated method stub
		List<Information> informations = mapper.findAllInformation();
	    return informations;
	}



	@Override
	public void delete(String informationId) {
		// TODO Auto-generated method stub
		mapper.delete(informationId);
	}



	@Override
	public Information getInformationById(String informationId) {
		// TODO Auto-generated method stub
		return mapper.findInformationById(informationId);
	}



/*	@Override
	public void doHandleInformation(Information information) {
		// TODO Auto-generated method stub
		mapper.doHandleInformation(information);
	}
*/


	@Override
	public void addInformation(Information information) {
		// TODO Auto-generated method stub
		mapper.saveInformation(information);
	}



	@Override
	public void updateInformation(Information information) {
		// TODO Auto-generated method stub
		mapper.updateInformation(information);
	}

	
}
