package com.zl.recommendproject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="likes")
public class Like {

	@Column(name="uid",nullable=true,length=11)	
	private int uid;//发起喜欢的用户
	@Column(name="fid",nullable=true,length=11)
	private int fid; //被喜欢的电影
	@Column(name="lid",nullable=true,length=11)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
    private Integer lid; //该喜欢行为的id
	
	public Like(int uid, int fid, Integer lid) {
        this.uid = uid;
        this.fid = fid;
        this.lid = lid;
    }

    public Like(){

    }

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}


	public Integer getLid() {
		return lid;
	}

	public void setLid(Integer lid) {
		this.lid = lid;
	}

	public int getFid() {
		return fid;
	}

	public void setFid(int fid) {
		this.fid = fid;
	}

	@Override
	public String toString() {
		return "Like [uid=" + uid + ", fid=" + fid + ", lid=" + lid + "]";
	}

	
}
