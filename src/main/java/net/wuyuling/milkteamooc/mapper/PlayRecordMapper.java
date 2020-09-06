package net.wuyuling.milkteamooc.mapper;

import net.wuyuling.milkteamooc.model.entity.PlayRecord;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface PlayRecordMapper {

    /**
     * Insert a Playing Record into Database
     *
     * @param playRecord the Playing Record
     * @return the Result of saving
     */
    int saveRecord(@Param("play_record") PlayRecord playRecord);

}
