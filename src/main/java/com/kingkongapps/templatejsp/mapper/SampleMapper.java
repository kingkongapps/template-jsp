package com.kingkongapps.templatejsp.mapper;

import com.kingkongapps.templatejsp.vo.SampleVO;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface SampleMapper {

    List<SampleVO> getSampleList(SampleVO sampleVO);
}
