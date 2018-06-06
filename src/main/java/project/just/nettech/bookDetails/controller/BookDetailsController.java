package project.just.nettech.bookDetails.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;
import project.just.nettech.bookDetails.service.BookDetailsService;
import project.just.nettech.common.resp.ApiResult;
import project.just.nettech.common.utils.ResultUtil;

import java.util.List;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.bookDetails.controller
 * @date 2018/6/5  15:35
 * @Description: TODO
 */
@RestController
@RequestMapping("book-details")
public class BookDetailsController {
    @Autowired
    @Qualifier("bookDetailsServiceImpl")
    private BookDetailsService bookDetailsService;
    @RequestMapping("/getAll/{categoryName}")
    public ApiResult getAllByCategory(@PathVariable String categoryName){
        return ResultUtil.success("查询成功",bookDetailsService.getAllByCategory(categoryName));
    }
    @RequestMapping("/getBook/{id}")
    public ApiResult getBook(@PathVariable Integer id){
        return ResultUtil.success("查询成功",bookDetailsService.getBook(id));
    }
    @PostMapping("/getBookByIds")
    public ApiResult getBookByIds(@RequestParam( value = "ids[]",required = false) Integer[] ids){
        return ResultUtil.success("查询成功",bookDetailsService.getBookByIds(ids));
    }
}
