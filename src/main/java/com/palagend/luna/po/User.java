package com.palagend.luna.po;

public class User{
  private Integer id;
  private String username;
  private String mobilePhone;
  private String email;
  private String avatar;


  public Integer getId(){
    return id;
  }
  public void setId(int id){
      this.id = id;
  }
  public String getUsername(){
    return username;
  }
  public void setUsername(String username){
    this.username = username;
  }
  public String getMobilePhone(){
    return mobilePhone;
  }
  public void setMobilePhone(String mobilePhone){
      this.mobilePhone = mobilePhone;
  }
  public String getEmail(){
    return email;
  }
  public void setEmail(String email){
    this.email = email;
  }
  public String getAvatar(){
    return avatar;
  }
  public void setAvatar(String avatar){
    this.avatar = avatar;
  }
}
