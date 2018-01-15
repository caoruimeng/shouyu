package cn.rmhfh.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.rmhfh.domain.CompriseMaterialBO;
import cn.rmhfh.entity.CompriseMaterial;
import cn.rmhfh.entity.Stove;

public interface StoveDao {

	int addStove(@Param("s") Stove stove);
	
	int addCompriseMaterial(@Param("compriseList") List<CompriseMaterial> list);
	
	int updateCompriseMaterial(@Param("cm") CompriseMaterial compriseMaterial);
	
	int deleteCompriseMaterial(@Param("cmId") int cmId);
	
	List<Stove> findAllStove();
	
	List<Stove> findStoveByType(@Param("type") String type);
	
	Stove findOneStove(@Param("stoveId") String stoveId);
	
	List<CompriseMaterialBO> findCompriseMaterialByStoveId(@Param("stoveId") String stoveId);
	
	int inRep(@Param("number") int number,@Param("stoveId") String stoveId);
	
	int outRep(@Param("number") int number,@Param("stoveId") String stoveId);
	
	
}
