package Ch02;




public class UserDto {
	
	private String userid;
	private String password;
	private String password2;
	private String username;
	private String zipcode;
	private String addr1;
	private String addr2;
	private String phone1;
	private String phone2;
	private String phone3;
	private String tel1;
	private String tel2;
	private String tel3;
	private String email;
	private String birth;
	
// 디폴트생성자
	public UserDto() {}
//	모든인자

	public UserDto(String userid, String password, String password2, String username, String zipcode, String addr1,
			String addr2, String phone1, String phone2, String phone3, String tel1, String tel2, String tel3, String email, String birth) {
		super();
		this.userid = userid;
		this.password = password;
		this.password2 = password2;
		this.username = username;
		this.zipcode = zipcode;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.phone1 = phone1;
		this.phone2 = phone2;
		this.phone3 = phone3;
		this.tel1 = tel1;
		this.tel2 = tel2;
		this.tel3 = tel3;
		this.email = email;
		this.birth = birth;
	}

	
//	게터세터
	public String getUserid() {
		return userid;
	}
	
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getPassword2() {
		return password2;
	}
	
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	
	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}
	
	public String getZipcode() {
		return zipcode;
	}
	
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	
	public String getAddr1() {
		return addr1;
	}
	
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	
	public String getAddr2() {
		return addr2;
	}
	
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	
	public String getPhone1() {
		return phone1;
	}
	
	public void setPhone1(String phone1) {
		this.phone1 = phone1;
	}
	
	public String getPhone2() {
		return phone2;
	}
	
	public void setPhone2(String phone2) {
		this.phone2 = phone2;
	}
	
	public String getPhone3() {
		return phone3;
	}
	
	public void setPhone3(String phone3) {
		this.phone3 = phone3;
	}
	
	public String getTel1() {
		return tel1;
	}
	
	public void setTel1(String tel1) {
		this.tel1 = tel1;
	}
	public String getTel2() {
		return tel2;
	}
	
	public void setTel2(String tel2) {
		this.tel2 = tel2;
	}
	public String getTel3() {
		return tel3;
	}
	
	public void setTel3(String tel3) {
		this.tel3 = tel3;
	}
	
	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getBirth() {
		return birth;
	}
	
	public void setBirth(String birth) {
		this.birth = birth;
	}

//	투스트링
	@Override
	public String toString() {
		return "UserDto [userid=" + userid + ", password=" + password + ", password2=" + password2 + ", username="
				+ username + ", zipcode=" + zipcode + ", addr1=" + addr1 + ", addr2=" + addr2 + ", phone1=" + phone1
				+ ", phone2=" + phone2 + ", phone3=" + phone3 + ", tel1=" + tel1 + ", tel2=" + tel2 + ", tel3=" + tel3
				+ ", email=" + email + ", birth=" + birth + "]";
	}

	

	

}
