package com.zhy.cloud.dao;

import java.util.List;
import java.util.Map;

import com.zhy.cloud.model.NewsComment;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


@Mapper
public interface NewsCommentDao {

    @Select("select * from news_comment t where t.id = #{id}")
    NewsComment getById(Long id);

    @Delete("delete from news_comment where id = #{id}")
    int delete(Long id);

    int update(NewsComment newsComment);
    
    @Options(useGeneratedKeys = true, keyProperty = "id")
    @Insert("insert into news_comment(Id, news_id, is_check, content, userId, like_number) values(#{Id}, #{newsId}, #{isCheck}, #{content}, #{userId}, #{likeNumber})")
    int save(NewsComment newsComment);
    
    int count(@Param("params") Map<String, Object> params);

    List<NewsComment> list(@Param("params") Map<String, Object> params, @Param("offset") Integer offset, @Param("limit") Integer limit);
}
