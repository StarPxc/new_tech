package project.just.nettech.billTable.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.just.nettech.billTable.dao.BillTableMapper;
import project.just.nettech.billTable.entity.BillTable;
import project.just.nettech.common.enums.ResultEnum;
import project.just.nettech.common.execption.CustomException;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.billTable.service
 * @date 2018/6/6  10:13
 * @Description: TODO
 */
@Service
public class BillServiceImpl implements BillService {
    @Autowired
    private BillTableMapper mapper;
    @Override
    public int addBill(BillTable billTable) {
        if(billTable==null){
            throw new CustomException(ResultEnum.OBJECT_NULL_ERROR);
        }
        return mapper.insertSelective(billTable);
    }
}
