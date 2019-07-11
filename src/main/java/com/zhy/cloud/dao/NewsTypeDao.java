package com.zhy.cloud.dao;

import java.util.List;
import java.util.Map;

import com.zhy.cloud.model.NewsType;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface NewsTypeDao {

    @Select("select * from news_type t where t.id = #{id}")
    NewsType getById(Long id);

    @Delete("delete from news_type where id = #{id}")
    int delete(Long id);

    int update(NewsType newsType);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into news_type(Id, categories, sort) values(#{Id}, #{categories}, #{sort})")
    int save(NewsType newsType);
    
    int count(@Param("params") Map<String, Object> params);

    List<NewsType> list();
}
