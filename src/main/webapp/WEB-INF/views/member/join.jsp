<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 & 회원가입</title>
<link href="resources/css/join.css" rel="stylesheet" />
<script src="/resources/script/userCheckForm.js"></script>
</head>
<body class="main-bg">
        <div class="login-container text-c animated flipInX">
                <div>
                    <h1 class="logo-badge text-whitesmoke"><span class="fa fa-user-circle"></span></h1>
                </div>
                    <h3 class="text-whitesmoke">로그인</h3>
                    <p class="text-whitesmoke">로그인</p>
                <div class="container-content">
                    <form class="margin-t">
                        <div class="form-group">
                            <input type="text" class="form-control" placeholder="아이디" required="">
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="*****" required="">
                        </div>
                        <button type="submit" class="form-button button-l margin-b">로그인</button>
        
                        <a class="text-darkyellow" href="#"><small>비밀번호를 잊어버리셨나요?</small></a>
                        <p class="text-whitesmoke text-center"><small>아직 계정이 없으신가요?</small></p>
                        <a class="text-darkyellow" href="/join"><small>회원가입</small></a>
                    </form>
                    <p class="margin-t text-whitesmoke"><small> Starbucks &copy; 2021</small> </p>
                </div>
            </div>
</body>
</html>