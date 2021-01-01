<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="myModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h3>Đăng nhập</h3>
            <form action="dang-nhap" method="post">
                <div class="field">
                    <span class="fa fa-user" aria-hidden="true"></span>
                    <input type="text" placeholder="Email" name="email" id="email" required>
                </div>
                <div class="field space">
                    <span class="fa fa-lock" aria-hidden="true"></span>
                    <input type="password" placeholder="Mật khẩu" name="password" id="password" required>
                </div>
                <div class="forget">
                    <a href="#">Quên mật khẩu?</a>
                </div>
                <div class="login">
                    <div class="sub">
                        <input type="submit" value="Đăng nhập" id="submit">
                    </div>
                </div>
                <div class="signup">
                    <span>Chưa có tài khoản?</span>
                    <a href="sigup.html">Đăng kí</a>
                </div>
            </form>
        </div>
    </div>