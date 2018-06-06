package project.just.nettech.common.handle;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartException;
import project.just.nettech.common.enums.ResultEnum;
import project.just.nettech.common.execption.CustomException;
import project.just.nettech.common.resp.ApiResult;
import project.just.nettech.common.utils.ResultUtil;

/**
 * @author Ethanp
 * @version V1.0
 * @Package com.db.fiftysql.common.execption
 * @Description: TODO 全局的异常处理
 * @date 2018/1/29 10:10
 */
@ControllerAdvice
@Slf4j
public class ExecptionHandle {
    @ExceptionHandler(value = Exception.class)
    @ResponseBody
    public ApiResult handle(Exception e) {
        e.printStackTrace();
        if (e instanceof CustomException) {//如果是自定义异常
            CustomException CustomException = (CustomException) e;

            return ResultUtil.error(CustomException.getCode(), CustomException.getMessage());
        } else if (e instanceof MultipartException) {
            return ResultUtil.error(ResultEnum.FILE_TOO_BIG.getCode(), ResultEnum.FILE_TOO_BIG.getMsg());
        } else {

            return ResultUtil.error(ResultEnum.UNKONW_ERROR.getCode(), ResultEnum.UNKONW_ERROR.getMsg());
        }

    }
}
