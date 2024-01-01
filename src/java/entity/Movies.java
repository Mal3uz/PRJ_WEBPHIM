/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class Movies {
    private  int id;
    private String title;
    private String origin_name;
    private String description;
    private int year;
    private String status;
    private int duration;
    private String img;
    private int hot;
    private int episode;
    private int topview;

    public Movies() {
    }

    public Movies(int id, String title, String origin_name, String description, int year, String status, int duration, String img, int hot, int episode, int topview) {
        this.id = id;
        this.title = title;
        this.origin_name = origin_name;
        this.description = description;
        this.year = year;
        this.status = status;
        this.duration = duration;
        this.img = img;
        this.hot = hot;
        this.episode = episode;
        this.topview = topview;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOrigin_name() {
        return origin_name;
    }

    public void setOrigin_name(String origin_name) {
        this.origin_name = origin_name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getYear() {
        return year;
    }

    public void setYear(int year) {
        this.year = year;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getHot() {
        return hot;
    }

    public void setHot(int hot) {
        this.hot = hot;
    }

    public int getEpisode() {
        return episode;
    }

    public void setEpisode(int episode) {
        this.episode = episode;
    }

    public int getTopview() {
        return topview;
    }

    public void setTopview(int topview) {
        this.topview = topview;
    }

    @Override
    public String toString() {
        return "Movies{" + "id=" + id + ", title=" + title + ", origin_name=" + origin_name + ", description=" + description + ", year=" + year + ", status=" + status + ", duration=" + duration + ", img=" + img + ", hot=" + hot + ", episode=" + episode + ", topview=" + topview + '}';
    }

  

    
}