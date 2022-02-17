package org.zerock.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.zerock.domain.UserinfoVO;

public interface UserinfoMapper {

	@Select("select * from shop_userinfo")
	public List<UserinfoVO> getList();
}
