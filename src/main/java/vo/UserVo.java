package vo;

public class UserVo {

	
	//field -> private으로 정보 은닉필수
	private int no;
	private String name;
	private String email;
	private String password;
	private String gender;
	
	//기본 생성자
	public UserVo() {
	}

	//전체 생성자
	public UserVo(int no, String name, String email, String password, String gender) {
		this.no = no;
		this.name = name;
		this.email = email;
		this.password = password;
		this.gender = gender;
	}

	//getter,setter세팅을 통한 우회접근
	//명명규칙의 규약이 있다.
	//명명규칙을 지키는 이유 EL때문
	//getter-> get필드명(); 
	//setter-> set필드명(타입 입력값);
	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
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

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "UserVo [no=" + no + ", name=" + name + ", email=" + email + ", password=" + password + ", gender="
				+ gender + "]";
	}

}
