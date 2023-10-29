package com.kingkongapps.templatejsp.service;

import com.kingkongapps.templatejsp.vo.SampleVO;

import java.util.List;

public interface SampleService {
    List<SampleVO> getSampleList(SampleVO sampleVO);
}
