package com.example.entity;

import java.io.Serializable;

public class Type implements Serializable {
    private static final long serialVersionUID = 1L;

    private Integer id; // 种类id
    private String name; // 种类名称
    private String description; // 种类描述
    private String img; // 种类图片

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
