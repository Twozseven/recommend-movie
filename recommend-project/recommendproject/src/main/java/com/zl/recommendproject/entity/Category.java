package com.zl.recommendproject.entity;
/**
 * 电影分类表
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="category")
public class Category {

	@Column(name="cid",nullable=false,length=11)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private Integer cid;            //分类id
	
	@Column(name="name",nullable=false,length=20)
    private String name;    //分类名

	public Integer getCid() {
		return cid;
	}

	public void setCid(Integer cid) {
		this.cid = cid;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String toString() {
		return "Category [cid=" + cid + ", name=" + name + "]";
	}
	
	
	
}
