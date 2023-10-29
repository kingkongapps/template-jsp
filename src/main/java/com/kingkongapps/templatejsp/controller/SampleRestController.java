package com.kingkongapps.templatejsp.controller;

import com.kingkongapps.templatejsp.service.SampleService;
import com.kingkongapps.templatejsp.vo.SampleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/v1")
public class SampleRestController {

    @Autowired
    private SampleService sampleService;

    @PostMapping(value = "/getSampleList")
    @ResponseBody
    public ResponseEntity<Map> getSampleList(@RequestBody SampleVO sampleVO) {
        List<SampleVO> list = sampleService.getSampleList(sampleVO);

        Map<String, Object> result = new HashMap<>();
        result.put("code", "OK");
        result.put("msg", "SUCCESS");
        result.put("data", list);

        return new ResponseEntity<>(result, HttpStatus.OK);
    }
}
