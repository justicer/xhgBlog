package com.gh.util;

import java.util.List;

public class PageBean<T> {
    private List<T> list; //记录当前页的数据
    private Integer startPage;//起始页
    private Integer firstPage;//第一页
    private Integer prePage;//前一页
    private Integer nextPage;//下一页
    private Integer totalPage;//总页数
    private Integer currentPage;//当前页
    private Integer totalCount;//总的记录数
    private Integer pageSize;//每页显示的记录数
    
    
    public PageBean(List<T> list, Integer startPage, Integer firstPage, Integer prePage, Integer nextPage, Integer totalPage, Integer currentPage, Integer totalCount, Integer pageSize) {
        this.list = list;
        this.startPage = startPage;
        this.firstPage = firstPage;
        this.prePage = prePage;
        this.nextPage = nextPage;
        this.totalPage = totalPage;
        this.currentPage = currentPage;
        this.totalCount = totalCount;
        this.pageSize = pageSize;
    }

    public PageBean() {
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }

    /**
     * 起始页，第几条数据--第几条数据
     * @return
     */
    public Integer getStartPage() {
        return (currentPage-1)*pageSize;
    }

    public void setStartPage(Integer startPage) {
        this.startPage = startPage;
    }
    /*
    第一页
     */
    public Integer getFirstPage() {
        return 1;
    }

    public void setFirstPage(Integer firstPage) {
        this.firstPage = firstPage;
    }

    /**
     * 前一页，当为第一页时为1
     * @return
     */
    public Integer getPrePage() {
        /*if(currentPage==firstPage){
            prePage=1;
        }else {
            prePage=currentPage-1;
        }*/
        return this.getCurrentPage()==this.getFirstPage()?1:this.getCurrentPage()-1;
    }

    public void setPrePage(Integer prePage) {
        this.prePage = prePage;
    }

    /**
     * 下一页，当为最后一页时，为totalPage
     * @return
     */
    public Integer getNextPage() {
        /*if(currentPage==totalPage){
            nextPage=totalPage;
        }else {
            nextPage=currentPage+1;
        }*/
        return this.getCurrentPage()==this.getTotalPage()?totalPage:this.getCurrentPage()+1;
    }

    public void setNextPage(Integer nextPage) {
        this.nextPage = nextPage;
    }

    /**
     * 总的页数，int型的除法都是向下取整，此时要向上取整
     * @return
     */
    public Integer getTotalPage() {
        return (int)Math.ceil(this.getTotalCount()*1.0/this.getPageSize());
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }
}
