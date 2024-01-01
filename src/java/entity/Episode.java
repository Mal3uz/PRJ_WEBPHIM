/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class Episode {
    private int movie_id;
    private String link_url;
    private int episode_number;

    public Episode() {
    }

    public Episode(int movie_id, String link_url, int episode_number) {
        this.movie_id = movie_id;
        this.link_url = link_url;
        this.episode_number = episode_number;
    }

    public int getMovie_id() {
        return movie_id;
    }

    public void setMovie_id(int movie_id) {
        this.movie_id = movie_id;
    }

    public String getLink_url() {
        return link_url;
    }

    public void setLink_url(String link_url) {
        this.link_url = link_url;
    }

    public int getEpisode_number() {
        return episode_number;
    }

    public void setEpisode_number(int episode_number) {
        this.episode_number = episode_number;
    }

    @Override
    public String toString() {
        return "Episode{" + "movie_id=" + movie_id + ", link_url=" + link_url + ", episode_number=" + episode_number + '}';
    }

   
    
    
}
