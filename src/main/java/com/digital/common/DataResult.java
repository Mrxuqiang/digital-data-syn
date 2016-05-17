package com.digital.common;

import com.chinaredstar.perseus.utils.DateUtil;

/**
 * Created by CC on 16/5/17.
 */
public class DataResult {

    //错误数
    int errorCount;
    //成功数据
    int successCount;
    //总数
    int totalCount;
    //开始时间
    Long startTime;
    //结束时间
    Long endTime;
    //运行耗时Long返回
    Long runTime;
    //运行耗时String返回
    String runTimeStr;
    //描述
    String description;

    public int getErrorCount() {
        return errorCount;
    }

    public void setErrorCount(int errorCount) {
        this.errorCount = errorCount;
    }

    public int getSuccessCount() {
        return successCount;
    }

    public void setSuccessCount(int successCount) {
        this.successCount = successCount;
    }

    public int getTotalCount() {
        return this.getErrorCount() + this.getSuccessCount();
    }

    public Long getStartTime() {
        return startTime;
    }

    public void setStartTime(Long startTime) {
        this.startTime = startTime;
    }

    public Long getEndTime() {
        return endTime;
    }

    public void setEndTime(Long endTime) {
        this.endTime = endTime;
    }

    public Long getRunTime() {
        return runTime;
    }

    public void setRunTime(Long runTime) {
        this.runTime = runTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getRunTimeStr() {
        return DateUtil.countDateTime(getStartTime(), getEndTime());
    }
}
