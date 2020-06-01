package com.nenu.controller;

import com.nenu.annotation.Log;
import com.nenu.entity.Notice;
import com.nenu.service.NoticeService;
import com.nenu.utils.web.AjaxResult;
import com.nenu.utils.web.BaseController;
import com.nenu.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 公告管理(Notice)表控制层
 */
@Controller
@RequestMapping("system/notice")
public class NoticeController extends BaseController {
    @Autowired
    NoticeService noticeService;

    @GetMapping()
    public String notice() {
        return "system/notice/notice";
    }

    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo list(Notice notice) {
        startPage();
        List<Notice> notices = noticeService.findNoticeList(notice);
        return getDataTable(notices);
    }

    @GetMapping("/add")
    public String add() {
        return "system/notice/add";
    }

    @Log("添加公告")
    @PostMapping("add")
    @ResponseBody
    public AjaxResult addSave(Notice notice) {
        return toAjax(noticeService.insert(notice));
    }

    @GetMapping("update/{id}")
    public String update(@PathVariable Integer id, Model model) {
        model.addAttribute("notice", noticeService.queryById(id));
        return "system/notice/update";
    }

    @Log("修改公告")
    @PutMapping("update")
    @ResponseBody
    public AjaxResult updateSave(Notice notice) {
        return toAjax(noticeService.update(notice));
    }

    @DeleteMapping()
    @ResponseBody
    @Log("删除公告")
    public AjaxResult delete(String ids) {
        return toAjax(noticeService.deleteByIds(ids));
    }
}