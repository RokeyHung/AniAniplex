<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
${messageAccount}
<div class="account">
    <div class="account-wrapper">
        <div id="display1">
            <form action="login" class="form-login" method="post">
                <header>ĐĂNG NHẬP!</header>
                <div class="field-input">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" name="dn-username" maxlength="40" minlength="4" placeholder="Tài khoản"/>
                </div>
                <div class="field-input">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" name="dn-password" maxlength="30" minlength="6" placeholder="Mật khẩu"/>
                </div>
                <div class="account-btn">
                    <button>ĐĂNG NHẬP</button>
                </div>
            </form>
            <div class="HadAccount">
                <div class="HadAccount-wrapper">
                    <span class="forgot-password cursor-pointer" id="toggleDisplay3">Quên mật khẩu?</span><br/>
                    <span><span>Bạn chưa có tài khoản?&nbsp;</span><span
                            id="toggleDisplay1">Đăng ký</span>&nbsp;ngay </span>
                </div>
            </div>
        </div>
        <div id="display2" style="display: none">
            <form action="register" class="form-register" method="post">
                <header>ĐĂNG KÝ!</header>
                <div class="field-input">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" name="dk-username" maxlength="40" minlength="6" placeholder="Tài khoản"/>
                </div>
                <div class="field-input">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" name="dk-password" maxlength="30" minlength="6" placeholder="Mật khẩu"/>
                </div>
                <div class="field-input">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" name="dk-repassword" maxlength="30" minlength="6"
                           placeholder="Nhập lại mật khẩu"/>
                </div>
                <div class="field-input">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="text" name="dk-email" placeholder="Email"/>
                </div>
                <div class="account-btn">
                    <button>ĐĂNG KÝ</button>
                </div>
            </form>
            <div class="HadAccount">
                <div class="HadAccount-wrapper">
                    <span><span> Đã có tài khoản?&nbsp;</span><span
                            id="toggleDisplay2">Đăng nhập</span>&nbsp;ngay </span>
                </div>
            </div>
        </div>
        <div id="display3" style="display: none">
            <form action="forgot-password" class="form-login" method="post">
                <header>QUÊN MẬT KHẨU!</header>
                <div class="field-input">
                    <i class="fa-solid fa-envelope"></i>
                    <input type="email" name="fg-email" maxlength="65" minlength="6" placeholder="Email của bạn"/>
                </div>
                <div class="field-input">
                    <i class="fa-solid fa-user"></i>
                    <input type="text" name="fg-username" maxlength="40" minlength="6" placeholder="Tài khoản"/>
                </div>
                <div class="field-input">
                    <i class="fa-solid fa-lock"></i>
                    <input type="password" name="fg-password" maxlength="30" minlength="6" placeholder="Mật khẩu"/>
                </div>
                <div class="account-btn">
                    <button>QUÊN MẬT KHẨU</button>
                </div>
            </form>
            <div class="HadAccount">
                <div class="HadAccount-wrapper">
                    <span><span>Quay lại&nbsp;</span><span id="toggleDisplay4">Đăng nhập</span></span>
                </div>
            </div>
        </div>
    </div>
    <script>
                        const toggleDisplay1 = document.getElementById('toggleDisplay1');
                        const toggleDisplay2 = document.getElementById('toggleDisplay2');
                        const toggleDisplay3 = document.getElementById('toggleDisplay3');
                        const toggleDisplay4 = document.getElementById('toggleDisplay4');
                        const display1 = document.getElementById('display1');
                        const display2 = document.getElementById('display2');
                        const display3 = document.getElementById('display3');
                        toggleDisplay1.addEventListener('click', function () {
                            if (display1.style.display === 'none') {
                            } else {
                                display1.style.display = 'none';
                                display2.style.display = 'block';
                            }
                        });
                        toggleDisplay2.addEventListener('click', function () {
                            if (display2.style.display === 'none') {
                            } else {
                                display2.style.display = 'none';
                                display1.style.display = 'block';
                            }
                        });
                        toggleDisplay3.addEventListener('click', function () {
                            if (display3.style.display === 'block') {
                            } else {
                                display3.style.display = 'block';
                                display1.style.display = 'none';
                            }
                        });
                        toggleDisplay4.addEventListener('click', function () {
                            if (display3.style.display === 'none') {
                            } else {
                                display3.style.display = 'none';
                                display1.style.display = 'block';
                            }
                        });

    </script>
</div>