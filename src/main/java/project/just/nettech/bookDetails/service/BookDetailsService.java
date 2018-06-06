package project.just.nettech.bookDetails.service;

import project.just.nettech.bookDetails.entity.BookDetails;

import java.util.List;

/**
 * @author 浦希成 【pxc2955317305@outlook.com】
 * @Package project.just.nettech.bookDetails.service
 * @date 2018/6/5  15:39
 * @Description: TODO
 */
public interface BookDetailsService {
    List<BookDetails> getAllByCategory(String categoryName);

    BookDetails getBook(Integer id);

    List<BookDetails> getBookByIds(Integer[] ids);
}
