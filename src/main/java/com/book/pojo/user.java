package com.book.pojo;

public class user {
    private Integer id;
    private String username;
    private String password;
    private String email;
    private String name;
    private String grade;   //班级
    private String gender;  //性别
    private String phone;
    private Integer borrowTotalCount;   //最多可借阅书籍数量
    private Integer borrowCount;  //当前借阅书籍数量    ===>不提供set方法 通过累加得到
    private Integer statu ;  //表示信誉积分  0<=statu<30->差    30<=statu<70 良  70<=statu 优
    private String message;
    //    private Map<Integer,Book> borrowBook = new HashMap<>();
    private String borrowId;

    public user(Integer id, String username, String password, String email, String name, String grade, String gender, String phone, Integer borrowTotalCount, Integer borrowCount, Integer statu, String message, String borrowId) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
        this.grade = grade;
        this.gender = gender;
        this.phone = phone;
        this.borrowTotalCount = borrowTotalCount;
        this.borrowCount = borrowCount;
        this.statu = statu;
        this.message = message;
        this.borrowId = borrowId;
    }

    public user() {
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGrade() {
        return grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getBorrowTotalCount() {
        return borrowTotalCount;
    }

    public void setBorrowTotalCount(Integer borrowTotalCount) {
        this.borrowTotalCount = borrowTotalCount;
    }

    public Integer getBorrowCount() {
        return borrowCount;
    }

    public void setBorrowCount(Integer borrowCount) {
        this.borrowCount = borrowCount;
    }

    public Integer getStatu() {
        return statu;
    }

    public void setStatu(Integer statu) {
        this.statu = statu;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getBorrowId() {
        return borrowId;
    }

    public void setBorrowId(String borrowId) {
        this.borrowId = borrowId;
    }


    @Override
    public String toString() {
        return "user{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", grade='" + grade + '\'' +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", borrowTotalCount=" + borrowTotalCount +
                ", borrowCount=" + borrowCount +
                ", statu=" + statu +
                ", message='" + message + '\'' +
                ", borrowId='" + borrowId + '\'' +
                '}';
    }
}
