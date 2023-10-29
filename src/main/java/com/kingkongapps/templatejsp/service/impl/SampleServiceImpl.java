package com.kingkongapps.templatejsp.service.impl;

import com.kingkongapps.templatejsp.mapper.SampleMapper;
import com.kingkongapps.templatejsp.service.SampleService;
import com.kingkongapps.templatejsp.vo.SampleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SampleServiceImpl implements SampleService {
    @Autowired
    private SampleMapper mapper;

    @Override
    public List<SampleVO> getSampleList(SampleVO sampleVO) {
        return mapper.getSampleList(sampleVO);
    }
}
