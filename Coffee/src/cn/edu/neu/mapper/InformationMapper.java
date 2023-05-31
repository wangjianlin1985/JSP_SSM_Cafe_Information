package cn.edu.neu.mapper;

import java.util.List;

import cn.edu.neu.core.common.Page;
import cn.edu.neu.model.Information;

public interface InformationMapper {

	
	List<Information> findAllInformation();

	List<Information> findInformationBySearchKeyword(Page<Information> page);

	void delete(String informationId);

	Information findInformationById(String informationId);

	/*void doHandleInformation(Information information);*/

	void saveInformation(Information information);

	void updateInformation(Information information);
}
