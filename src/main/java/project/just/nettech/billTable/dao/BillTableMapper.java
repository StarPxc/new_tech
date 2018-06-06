package project.just.nettech.billTable.dao;

import org.springframework.stereotype.Repository;
import project.just.nettech.billTable.entity.BillTable;
@Repository
public interface BillTableMapper {
    int deleteByPrimaryKey(String billNum);

    int insert(BillTable record);

    int insertSelective(BillTable record);

    BillTable selectByPrimaryKey(String billNum);

    int updateByPrimaryKeySelective(BillTable record);

    int updateByPrimaryKey(BillTable record);
}