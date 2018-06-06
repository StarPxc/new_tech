package project.just.nettech.payment.dao;

import project.just.nettech.payment.entity.Payment;

public interface PaymentMapper {
    int deleteByPrimaryKey(String billNum);

    int insert(Payment record);

    int insertSelective(Payment record);

    Payment selectByPrimaryKey(String billNum);

    int updateByPrimaryKeySelective(Payment record);

    int updateByPrimaryKey(Payment record);
}