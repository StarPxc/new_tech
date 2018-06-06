package project.just.nettech.billTable.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import project.just.nettech.billTable.entity.BillTable;
import project.just.nettech.billTable.service.BillService;
import project.just.nettech.common.resp.ApiResult;
import project.just.nettech.common.utils.ResultUtil;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.billTable.controller
 * @date 2018/6/6  10:12
 * @Description: TODO
 */
@RestController
@RequestMapping("bill")
public class BillController {
    @Autowired
    @Qualifier("billServiceImpl")
    private BillService billService;

    @RequestMapping("addBill")
    public ApiResult addBill(@RequestBody BillTable billTable){
        return ResultUtil.success("增加成功",billService.addBill(billTable));
    }
}
