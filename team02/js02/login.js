function login() {
    // Implement login logic here
    alert('Login attempt with ' + document.getElementById('username').value);
    // 跳转到另一个页面
    // window.location.href = "https://yiyan.baidu.com/chat/4515175556";


  }

  function showRegisterForm() {
    document.getElementById('loginForm').classList.add('hidden');
    document.getElementById('registerForm').classList.remove('hidden');
  }

  function showLoginForm() {
    document.getElementById('loginForm').classList.remove('hidden');
    document.getElementById('registerForm').classList.add('hidden');
    document.getElementById('forgotPasswordForm').classList.add('hidden');
  }

  function register() {
    // Implement registration logic here
    alert('Registration attempt with ' + document.getElementById('regUsername').value);
  }

  function showForgotPasswordForm() {
    document.getElementById('loginForm').classList.add('hidden');
    document.getElementById('forgotPasswordForm').classList.remove('hidden');
  }

  function sendVerificationCode() {
    // Implement sending verification code logic here
    alert('Sending verification code to ' + document.getElementById('forgotPhone').value);
  }