/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author DELL
 */
public class Users {
    private int id;
    private String name;
    private String email;
    private String password;
    private int role_id;

    public Users() {
    }

    public Users(int id, String name, String email, String password, int role_id) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.role_id = role_id;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "Users{" + "id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", role_id=" + role_id + '}';
    }

   
    

  
     
}
