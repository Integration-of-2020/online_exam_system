package com.nenu.controller;

import com.nenu.entity.Score;
import com.nenu.service.ExamStudentService;
import com.nenu.utils.web.BaseController;
import com.nenu.utils.web.TableDataInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 成绩管理的Controller
 */
@Controller()
@RequestMapping("onlineExam/score")
public class ScoreController extends BaseController {

    @Autowired
    ExamStudentService examStudentService;

    @GetMapping
    public String score() {
        return "onlineExam/score/score";
    }

    @GetMapping("/list")
    @ResponseBody
    public TableDataInfo list(Score score) {
        startPage();
        List<Score> scores = examStudentService.findScoreList(score);
        return getDataTable(scores);
    }

}
