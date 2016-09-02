package com.palagend.luna.po;

public class Blog{
  private Integer id;
  private String title;
  private String content;
  //Use type Long as timestamp for date conversion
  private Long timestamp;
  //The id of the blog that this blog responses to;0 is reserved
  private Integer responseTo;
  //The author of this blog; 0 is reserved
  private Integer author;


  public Integer getId(){
      return id;
  }
  public void setId(Integer id){
    this.id = id;
  }
  public String getTitle(){
    return title;
  }
  public void setTitle(String title){
    this.title = title;
  }
  public String getContent(){
    return content;
  }
  public void setContent(String content){
    this.content = content;
  }

  public Long getTimestamp(){
      return timestamp;
  }
  public void setTimestamp(Long timestamp){
      this.timestamp = timestamp;
  }

  public Integer getResponseTo(){
      return responseTo;
  }
  public void setResponseTo(Integer responseTo){
    this.responseTo = responseTo;
  }
  public Integer getAuthor(){
    return author;
  }
  public void setAuthor(Integer author){
    this.author = author;
  }
}
