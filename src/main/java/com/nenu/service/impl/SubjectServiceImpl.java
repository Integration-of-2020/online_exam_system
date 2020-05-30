package com.nenu.service.impl;

import com.nenu.dao.SubjectDao;
import com.nenu.entity.Subject;
import com.nenu.service.SubjectService;
import com.nenu.utils.Convert;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Service
public class SubjectServiceImpl implements SubjectService {

    @Resource
    private SubjectDao dao;

    @Override
    public List<Subject> findSubjectList(Subject subject) {
        return dao.findSubjectList(subject);
    }

    @Override
    public int insert(Subject subject) {
        return dao.insert(subject);
    }

    @Override
    public Object queryById(String id) {
        return dao.queryById(id);
    }

    @Override
    public int update(Subject subject) {
        return dao.update(subject);
    }

    @Override
    public int deleteSave(String ids) {
        return dao.deleteSave(Convert.toStrArray(ids));
    }

    @Override
    public List<Map> getSubject() {
        return dao.getSubject();
    }
}
