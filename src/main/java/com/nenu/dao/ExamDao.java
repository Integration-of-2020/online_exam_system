package com.nenu.dao;

import com.nenu.entity.Exam;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * 试卷表(Exam)表数据库访问层
 */
public interface ExamDao {

    /**
     * 通过ID查询单条数据
     *
     * @param examId 主键
     * @return 实例对象
     */
    Exam queryById(Integer examId);

    /**
     * 通过实体作为筛选条件查询
     *
     * @param exam 实例对象
     * @return 对象列表
     */
    List<Exam> queryAll(Exam exam);

    /**
     * 新增数据
     *
     * @param exam 实例对象
     * @return 影响行数
     */
    int insert(Exam exam);

    /**
     * 修改数据
     *
     * @param exam 实例对象
     * @return 影响行数
     */
    int update(Exam exam);

    /**
     * 通过主键删除数据
     *
     * @param examId 主键
     * @return 影响行数
     */
    int deleteById(Integer examId);

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    int deleteByIds(Integer[] ids);

    /**
     * 根据id更新成绩
     *
     * @param score
     * @param examId
     * @return
     */
    int updateScoreById(@Param("score") double score,@Param("examId") Integer examId);

    /**
     * 获取科目列表
     * @return
     */
    List<Map> querySubject();
}