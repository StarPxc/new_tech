package project.just.nettech.bookDetails.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import project.just.nettech.bookDetails.dao.BookDetailsMapper;
import project.just.nettech.bookDetails.entity.BookDetails;
import project.just.nettech.common.enums.ResultEnum;
import project.just.nettech.common.execption.CustomException;

import java.util.List;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.bookDetails.service
 * @date 2018/6/5  15:39
 * @Description: TODO
 */
@Service
public class BookDetailsServiceImpl implements BookDetailsService {
    @Autowired
    private BookDetailsMapper mapper;
    @Override
    public List<BookDetails> getAllByCategory(String categoryName) {
        if(categoryName==null||categoryName.equals("")){
            throw new CustomException(ResultEnum.OBJECT_NULL_ERROR);
        }
        return mapper.selectAllByCategory(categoryName);
    }

    @Override
    public BookDetails getBook(Integer id) {
        if(id==null){
            throw new CustomException(ResultEnum.OBJECT_NULL_ERROR);
        }
        return mapper.selectByPrimaryKey(id);
    }

    @Override
    public List<BookDetails> getBookByIds(Integer[] ids) {
        if(ids.length == 0){
            return null;
        }
        return mapper.selectBookByIds(ids);
    }
}
