package com.example.jsplearn;

import java.util.Date;

public class Message {
    private String username;
    private String title;
    private String content;
    private Date time;

    // 构造方法
    public Message() {}

    // 设置属性值的方法
    public void setUsername(String username) {
        this.username = username;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    // 获取属性值的方法
    public String getUsername() {
        return username;
    }

    public String getTitle() {
        return title;
    }

    public String getContent() {
        return content;
    }

    public Date getTime() {
        return time;
    }
}