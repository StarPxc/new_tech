package project.just.nettech.payment.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;
import project.just.nettech.common.resp.ApiResult;
import project.just.nettech.common.utils.ResultUtil;
import project.just.nettech.payment.entity.Payment;
import project.just.nettech.payment.service.PaymentService;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.payment.controller
 * @date 2018/6/6  9:05
 * @Description: TODO
 */
@RestController
@RequestMapping("payment")
public class PaymentController {
    @Autowired
    @Qualifier("paymentServiceImpl")
    private PaymentService paymentService;
    @PostMapping("/addPayment")
    public ApiResult addPayment(@RequestBody Payment payment){
        return ResultUtil.success("增加成功",paymentService.addPayment(payment));
    }
}
