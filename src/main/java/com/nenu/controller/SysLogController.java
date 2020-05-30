package com.nenu.controller;

import com.nenu.annotation.Log;
import com.nenu.entity.SysLog;
import com.nenu.service.SysLogService;
import com.nenu.utils.web.AjaxResult;
import com.nenu.utils.web.BaseController;
import com.nenu.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 系统日志(SysLog)表控制层
 *
 */
@Controller
@RequestMapping("system/log")
public class SysLogController extends BaseController {


    @Autowired
    private SysLogService sysLogService;

    @GetMapping()
    public String user() {
        return "system/log/log";
    }


    @GetMapping("list")
    @ResponseBody
    public TableDataInfo list(SysLog sysLog) {
        startPage();
        List<SysLog> sysLogs = sysLogService.selectLogList(sysLog);
        return getDataTable(sysLogs);
    }

    @DeleteMapping()
    @ResponseBody
    @Log("删除日志")
    public AjaxResult delete(String ids) {
        return toAjax(sysLogService.deleteSysLogByIds(ids));
    }

    @GetMapping("/detail/{id}")
    public String detail(@PathVariable Integer id, Model model) {
        model.addAttribute("log", sysLogService.queryById(id));
        return "system/log/detail";
    }

}