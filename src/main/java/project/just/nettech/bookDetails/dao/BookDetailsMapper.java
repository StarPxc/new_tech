package project.just.nettech.bookDetails.dao;

import org.springframework.stereotype.Repository;
import project.just.nettech.bookDetails.entity.BookDetails;

import java.util.List;

@Repository
public interface BookDetailsMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(BookDetails record);

    int insertSelective(BookDetails record);

    BookDetails selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(BookDetails record);

    int updateByPrimaryKey(BookDetails record);

    List<BookDetails> selectAllByCategory(String categoryName);

    List<BookDetails> selectBookByIds(Integer[] ids);
}