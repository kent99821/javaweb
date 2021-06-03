package com.book.pojo;

/*
`id` int PRIMARY KEY auto_increment,
		`username` VARCHAR(20) not NULL UNIQUE,
		`password` VARCHAR(32) not NULL,
		`email` VARCHAR(20) not NULL
 */
public class User
{
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

    public String getBorrowId() {
        return borrowId;
    }

    public void setBorrowId(String borrowId) {
        this.borrowId = borrowId;
    }

    public User( String name,Integer id,String gender, String grade, String phone,String username, String email) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.name = name;
        this.grade = grade;
        this.gender = gender;
        this.phone = phone;
    }

    public User(Integer id, String username, String name, String grade, String gender, Integer borrowTotalCount, Integer statu, String phone) {
        this.id = id;
        this.username = username;
        this.name = name;
        this.grade = grade;
        this.gender = gender;
        this.borrowTotalCount = borrowTotalCount;
        this.statu = statu;
        this.phone = phone;
    }

    public  User(){
        if (this.borrowTotalCount == null)
        {
            this.borrowTotalCount = 10;
        }
        if (this.borrowCount == null)
        {
            this.borrowCount = 0;
        }
        if (this.statu == null)
        {
            this.statu = 50;
        }

    }

    public void setBorrowCount(Integer borrowCount) {
        this.borrowCount = borrowCount;
    }

    public User(String name, String gender, String grade, String phone,Integer statu ,String username, String password, String email, Integer id) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.name = name;
        this.grade = grade;
        this.gender = gender;
        this.statu = statu;
        this.phone = phone;
        this.id = id;
        if (this.borrowTotalCount == null)
        {
            this.borrowTotalCount = 10;
        }
        if (this.borrowCount == null)
        {
            this.borrowCount = 0;
        }
        if (this.statu == null)
        {
            this.statu = 50;
        }
    }



    /**
     * 信誉值为-1则最多可借阅书籍为2
     * @param statu
     */
    public void reduceTotalCount(Integer statu)
    {
        if (statu == -1)
        {
            this.borrowTotalCount = 2;
        }
    }

    public void setBorrowTotalCount(Integer borrowTotalCount) {
        this.borrowTotalCount = borrowTotalCount;
    }

    public User(String username, String password, String name) {
        this.username = username;
        this.password = password;
        this.name = name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public void setStatu(Integer statu) {
        this.statu = statu;
    }

    public void setMessage(String message) {
        this.message = message;
    }


    public String getName() {
        return name;
    }

    public String getGrade() {
        return grade;
    }

    public String getGender() {
        return gender;
    }

    public String getPhone() {
        return phone;
    }

    public Integer getBorrowTotalCount() {
        return borrowTotalCount;
    }

    public Integer getBorrowCount() {
        return borrowCount;
    }

    public Integer getStatu() {
        return statu;
    }

    public String getMessage() {
        return message;
    }


    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", grade='" + grade + '\'' +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", borrowTotalCount=" + borrowTotalCount +
                ", statu=" + statu +
                ", borrowId='" + borrowId + '\'' +
                '}';
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

    public User(Integer id, String username, String password, String email) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.email = email;
        if (this.borrowTotalCount == null)
        {
            this.borrowTotalCount = 10;
        }
        if (this.borrowCount == null)
        {
            this.borrowCount = 0;
        }
        if (this.statu == null)
        {
            this.statu = 50;
        }
    }
}
