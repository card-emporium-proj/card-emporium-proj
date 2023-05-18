package com.codeup.adlister.models;

public class Ad {
    private int id;
    private int userId;
    private String title;
    private String description;
    private float cost;
    private String image;
    private String category;


    public Ad(int id, int userId, String title, String description, float cost, String image, String category) {
        this.id = id;
        this.userId = userId;
        this.title = title;
        this.description = description;
        this.cost = cost;
        this.image = image;
        this.category = category;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

}
