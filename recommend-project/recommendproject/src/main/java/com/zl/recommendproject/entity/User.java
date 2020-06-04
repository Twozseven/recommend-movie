package com.zl.recommendproject.entity;
/**
 * 用户表
 */
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {

	@Column(name="uid",nullable=false,length=11)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Id
	private Integer uid;            //用户id
	@Column(name="username",nullable=false,length=20)
    private String username;    //用户名
	@Column(name="password",nullable=false,length=20)
    private String password;    //密码
	@Column(name="major",nullable=true,length=20)
    private String major;       //专业
	@Column(name="email",nullable=true,length=64)
    private String email;       //邮箱

    public User() {
    }

    public User(Integer uid, String username, String password, String major, String email) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.major = major;
        this.email = email;
    }

    public User(String username, String password, String major, String email) {
        this.username = username;
        this.password = password;
        this.major = major;
        this.email = email;
    }

	public Integer getUid() {
		return uid;
	}

	public void setUid(Integer uid) {
		this.uid = uid;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getMajor() {
		return major;
	}

	public void setMajor(String major) {
		this.major = major;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", major=" + major
				+ ", email=" + email + "]";
	}
    
}
