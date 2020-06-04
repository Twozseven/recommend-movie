package com.zl.recommendproject.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

@Entity
@Table(name="films")
public class Film {

	
	@Column(name="fid",nullable=false,length=11)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private Integer fid;            //论文id,自动添加
	@Column(name="author",nullable=true,length=64)
	private String author;  //作者
	@Column(name="date",nullable=true)
	private Date date;      //电影发行日期
	@Column(name="place",nullable=true,length=128)
	private String place;   //制片地区
	@Column(name="title",nullable=true,length=128)
	private String title;   //电影名称
	@Column(name="digest",nullable=true,length=1024)
	private String digest;  //摘要
	@Column(name="rank",nullable=true,length=11)
	private double rank;  //电影评分
	@Column(name="likecnt",nullable=true,length=11)
	private int cnt;        //喜欢该论文的用户数量
	@Column(name="colcnt",nullable=true,length=11)
	private int colCnt;    //收藏量
    @Transient 
    private double w;       //相似度(只在推荐时调用)
    @Column(name="url",nullable=true,length=128)
    private String url;//电影图片url
    @Column(name="categoryid",nullable=true,length=11)
    private int categoryId;//电影分类id
    
    
    public Film() {
    }

    public Film(Integer fid, String author, Date date, String place, String title, String digest, Double rank, int cnt, int colCnt,int categoryId,String url) {
        this.fid = fid;
        this.author = author;
        this.date = date;
        this.place = place;
        this.title = title;
        this.digest = digest;
        this.rank = rank;
        this.cnt = cnt;
        this.colCnt = colCnt;
        this.categoryId=categoryId;
        this.url=url;
    }

	

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getPlace() {
		return place;
	}

	public void setPlace(String place) {
		this.place = place;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDigest() {
		return digest;
	}

	public void setDigest(String digest) {
		this.digest = digest;
	}

	

	public int getCnt() {
		return cnt;
	}

	public void setCnt(int cnt) {
		this.cnt = cnt;
	}

	
	@Transient 
	public double getW() {
		return w;
	}
	@Transient 
	public void setW(double w) {
		this.w = w;
	}

	public Integer getFid() {
		return fid;
	}

	public void setFid(Integer fid) {
		this.fid = fid;
	}

	public double getRank() {
		return rank;
	}

	public void setRank(double rank) {
		this.rank = rank;
	}

	public int getColCnt() {
		return colCnt;
	}

	public void setColCnt(int colCnt) {
		this.colCnt = colCnt;
	}

	
	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public int getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(int categoryId) {
		this.categoryId = categoryId;
	}

	@Override
	public String toString() {
		return "Film [fid=" + fid + ", author=" + author + ", date=" + date + ", place=" + place + ", title=" + title
				+ ", digest=" + digest + ", rank=" + rank + ", cnt=" + cnt + ", colCnt=" + colCnt + ", w=" + w
				+ ", url=" + url + ", categoryId=" + categoryId + "]";
	}

	

	
    

}
