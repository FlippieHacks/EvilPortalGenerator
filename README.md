# Evil Portal Generator

Tired of manually creating portals to impress your friends and educate people?
This application helps you **generate a hotspot portal** to be used in the [Evil Portal](https://github.com/bigbrodude6119/flipper-zero-evil-portal) app on the Flipper Zero.

Don't feel like making one yourself? You might find what you are looking for on [my repo of various portals](https://github.com/FlippieHacks/FlipperZeroEuropeanPortals/tree/main).
If you manage to generate a portal for wider use, don't be shy to make a pull request to this repository with the generated html.

Or start extracting the log-in data much faster with [these scripts](https://github.com/FlippieHacks/EvilPortalLogsExtractor) 

`DISCLAIMER: This is for educational purposes only. Extracting passwords from unaware victims is illegal`

### Requirements
You need any bash terminal or Powershell with WSL2 installed

### How to use

1. Clone the project
2. Modify and save the svg.txt and the config.txt files
3. Run the generate.sh script in the src folder
4. An index.html & indexWithForgotPassword.html is generated and ready for use on EvilPortal

#### svg.txt

This text file contains the html code of the svg tag which will be used to display a logo on the generated html page.
Paste your custom logo in the form of an svg tag in this file, when we generate an html page the svg will be included.

You can download any logo in PNG, JPG etc. and convert it to an svg with an svg converter.
We use a tool [like this one](https://image.online-convert.com/convert-to-svg)

Modifying the color and size of the logo can be done in the svg tag in the svg.txt file

```
You are limited to 20 kb for the HTML-file to be able to be broadcasted as a portal by EvilPortal on your Flipper, 
if the file is too large after you generate it, you should consider using a smaller size svg
```

#### config.txt

The config.txt file contains the titles, text and color you want your fake portal to have. The values are everything after the colon ':', the position of the colon in the file cannot be changed (the whitespaces before the colon are also counted) and spaces after the colon will be taken into account. So we leave no white space between the colon and the value.

The screenshot of our example html shows what the variables in the config.txt correspond to on the html file.
```
background_color             :#FFFFFF
company_title_text           :Evil Portal Generator
company_title_color          :black
container_background_color   :#FFFFFF
container_title_text         :Sign in to fake Github
container_title_color        :#000000
container_subtitle_text      :Use your account
container_subtitle_color     :#000000
submit_btn_background_color  :#000000
submit_btn_text              :SEND CREDENTIALS
submit_btn_text_color        :white
forgot_credentials_text      :Forgot password?
forgot_credentials_color     :black
```

![VariablesPortalGenerator](https://zupimages.net/up/23/45/dq6c.png)

Just keep the layout of the original config.txt and replace the values. This way no extra whitespaces are added an the shell script can read out the values of the config.txt file properly. This screenshots shows what we mean (the forgot_credentials variable has been removed in the latest version).

![Good and bad example](https://zupimages.net/up/23/32/87r8.png)

### What if my file is just too big?
You are limited to an index.html file of **MAX 20 ko** on Evil Portal. It's just the way it is. Otherwise, the portal will just **not start** and crash your Flipper.
As I said earlier, limit the colors of the SVG to stay between these limits.
Also nice to have a look at [RocketGod's HTML squasher](https://github.com/RocketGod-git/evilportal-htmlsquash) which is made for this. Thumbs up to him!

### What to expect from this app in the future
I will be **updating** this app to make it **more user-friendly**. **Contributions are more then welcome,** of course. 
I am also planning on **having the app available in next languages**:
- French
- Dutch
- Spanish
- German
  
In order to make generating portals in these languages easier. I chose those because they are the ones I speak next to English.
For **now it's English only**. I am open for **suggestions or translations to other languages**.

Thanks to my friend T. for writing this code!

## Happy flippin'
