package com.zhy.cloud.dao;

import java.util.List;
import java.util.Map;

import com.zhy.cloud.model.NewsInfo;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface NewsInfoDao {

    @Select("select * from news_info t where t.id = #{id}")
    NewsInfo getById(Long id);

    @Delete("delete from news_info where id = #{id}")
    int delete(Long id);

    int update(NewsInfo newsInfo);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into news_info(Id, type_id, title, content, click_volume, display_method, is_top, is_scroll, is_check, release_time, create_time) values(#{Id}, #{typeId}, #{title}, #{content}, #{clickVolume}, #{displayMethod}, #{isTop}, #{isScroll}, #{isCheck}, #{releaseTime}, #{createTime})")
    int save(NewsInfo newsInfo);
    
    int count(@Param("params") Map<String, Object> params);

    List<NewsInfo> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
