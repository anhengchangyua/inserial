package com.zhy.cloud.dao;

import com.zhy.cloud.model.FileInfo;
import org.apache.ibatis.annotations.*;

import java.util.List;
import java.util.Map;

@Mapper
public interface FileInfoDao {

    @Select("select * from file_info t where t.id = #{id}")
    FileInfo getById(String id);

    @Insert("insert into file_info(id, contentType, size, path, url, type, createTime, updateTime) values(#{id}, #{contentType}, #{size}, #{path}, #{url}, #{type}, now(), now())")
    int save(FileInfo fileInfo);

    @Update("update file_info t set t.updateTime = now() where t.id = #{id}")
    int update(FileInfo fileInfo);

    @Delete("delete from file_info where id = #{id}")
    int delete(String id);

    int count(@Param("params") Map<String, Object> params);

    List<FileInfo> list( );

}
