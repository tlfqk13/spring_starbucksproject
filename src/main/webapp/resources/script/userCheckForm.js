/**
 * 회원정보 검증
 */
 function userCheck(){

	let userID = document.getElementById("userID");
	let userPassword = document.getElementById("userPassword");
	let userPasswordCheck = document.getElementById("userPasswordCheck");
	let userName = document.getElementById("userName");
	let userNickName = document.getElementById("userNickName");
	let userEmail = document.getElementById("userEmail");
	let userBirth = document.getElementById("userBirth");

	let telecom = document.getElementById("telecom");
	let userPhone = document.getElementById("userPhone");

	//성별을 반드시 검증할 건지? 
	//let userGender = document.getElementByName("userGender");


	if(userID.value.trim().length == 0){
		alert("아이디는 필수 항목입니다.");
		return false;
	}
	if(userPassword.value.trim().length == 0){
		alert("비밀번호는 필수 항목입니다.");
		return false;
	}
	if(userPasswordCheck.value.trim().length == 0){
		alert("비밀번호는 필수 항목입니다.");
		return false;
	}
	if(userPassword.value.trim() != userPasswordCheck.value.trim()){
		alert("비밀번호와 비밀번호 확인은 같아야합니다.");
	}
	if(userName.value.trim().length == 0){
		alert("이름은 필수 항목입니다.");
		return false;
	}
	if(userNickName.value.trim().length == 0){
		alert("닉네임은 필수 항목입니다.");
		return false;
	}
	if(userEmail.value.trim().length == 0){
		alert("이메일은 필수 항목입니다.");
		return false;
	}
	if(userBirth.value.trim().length == 0){
		alert("생년월일은 필수 항목입니다.");
		return false;
	}

	if( isNaN(userPhone.value.trim())){
		alert("전화번호를 알맞게 입력해주세요");
		return false;
	}

	return true; 
}

function loginCheck(){
	let userID = document.getElementById("userID");
	let userPassword = document.getElementById("userPassword");

	if(userID.value.trim().length == 0){
		alert("아이디를 입력해주세요.");
		return false;
	}
	if(userPassword.value.trim().length == 0){
		alert("비밀번호를 입력해주세요.");
		return false;
	}
	return true;
} 