package com.nenu.controller;

import com.nenu.annotation.Log;
import com.nenu.entity.Subject;
import com.nenu.service.SubjectService;
import com.nenu.utils.web.AjaxResult;
import com.nenu.utils.web.BaseController;
import com.nenu.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RequestMapping("onlineExam/subject")
@Controller
public class SubjectController extends BaseController {

    @Autowired
    private SubjectService subjectService;
    
    @GetMapping()
    public String Subject() {
        return "onlineExam/subject/subject";
    }

    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo list(Subject subject) {
        startPage();
        List<Subject> Subjects = subjectService.findSubjectList(subject);
        return getDataTable(Subjects);
    }

    @GetMapping("/add")
    public String add() {
        return "onlineExam/subject/add";
    }

    @PostMapping("/add")
    @ResponseBody
    @Log("添加科目")
    public AjaxResult addSave(Subject subject) {
        return toAjax(subjectService.insert(subject));
    }

    @GetMapping("/update/{id}")
    public String update(@PathVariable String id, Model model) {
        model.addAttribute("subject", subjectService.queryById(id));
        return "/onlineExam/subject/edit";
    }

    @PostMapping("/update")
    @Log("修改科目")
    @ResponseBody
    public AjaxResult updateSave(Subject subject) {
        return toAjax(subjectService.update(subject));
    }

    @DeleteMapping()
    @Log("删除")
    @ResponseBody
    public AjaxResult delete(String ids) {
        return  toAjax(subjectService.deleteSave(ids));
    }


    @RequestMapping("getSubject")
    @ResponseBody
    public Map getSubject(){
        List<Map> list = subjectService.getSubject();
        Map resultMap = new HashMap();
        resultMap.put("list",list);
        resultMap.put("success",true);
        return resultMap;
    }
}
