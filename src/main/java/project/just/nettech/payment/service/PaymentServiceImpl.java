package project.just.nettech.payment.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.just.nettech.common.enums.ResultEnum;
import project.just.nettech.common.execption.CustomException;
import project.just.nettech.payment.dao.PaymentMapper;
import project.just.nettech.payment.entity.Payment;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.payment.service
 * @date 2018/6/6  9:08
 * @Description: TODO
 */
@Service
public class PaymentServiceImpl implements PaymentService {
    @Autowired
    private PaymentMapper mapper;
    @Override
    public int addPayment(Payment payment) {
        if(payment==null){
            throw new CustomException(ResultEnum.OBJECT_NULL_ERROR);
        }
        return mapper.insertSelective(payment);
    }
}
