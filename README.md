# Evil Portal Generator

Tired of manually creating portals to impress your friends and educate people?
This application helps you **generate a hotspot portal** to be used in the [Evil Portal](https://github.com/bigbrodude6119/flipper-zero-evil-portal) app on the Flipper Zero.

# DISCLAIMER: This is for educational purposes only. Not to be used on unaware victims. You could be arrested for it, that's a crime.

## Don't feel like making one yourself? You might find what you are looking for on [my repo of various portals](https://github.com/FlippieHacks/FlipperZeroEuropeanPortals/tree/main).

### Before you use
You need GitBash and Powershell for this one. Sorry Linux or Mac users...

### How to use
*!! You have the ability to have a **logo of your choice** on the portal you generate. **This logo has to be an SVG**. You can easily download any logo in PNG, JPG, ... format and **convert** it with a tool [like this one](https://image.online-convert.com/convert-to-svg). Bear in mind that you are **limited to 20 ko for the total final HTML to be able to be broadcasted as portal by your Flipper**. I particularly like the SVG converter I linked because it outputs very small SVG files, although only black and white. I then **change its color manually in the code and adapt its size to the portal's needs**. I am aware that this is not ideal for multicolor logos but it is a **work in progress!***
1. **Download** the code and **extract** it
2. In the **main folder**, you need to **change the content of two files**: *config.txt* and *svg.txt*
3. The *svg.txt* file is, simply, your SVG, thus the logo you want to use. **Copy and paste your logo's code in there**, starting with <svg> and ending with </svg> (just stating the obvious). **Don't forget this is where you color your logo, if you need it colored. That is also where you can resize it.**
4. The *config.txt is where the magic happens*. You have to assign a **value for each variable, variables being text or colors in this one.**
You may **refer to the screenshot down here to have a better idea of what each variable does.**
![VariablesPortalGenerator](https://zupimages.net/up/23/32/vx19.png)

**Don't touch the variable's names and what is situated LEFT of the two dots on each line. That would toast the script. Also, keep in mind that you should *not* leave a space between the text you write and the two dots on its left. See screenshot down here for good practice.**

![Good and bad example](https://zupimages.net/up/23/32/87r8.png)
Just keep the layout as it is in the original file and everyone will be happy.
You can **chose** to have the "Forgot credentials" part by **writing true, or false** if you do not want it, in the corresponding field.
6. Once you tweaked the settings as desired, **save** the *config.txt* and the *svg.txt* file to the same folder they were in already. (so **don't copy them or whatever, just save**)
7. In the application folder, **double click the *EvilPortalGenerator shortcut*** and watch the magic happen. If everything goes right, your index.html file will be **generated and opened**. You will find it in the same folder as the rest of the application.
Don't forget to **move** your freshly generated portal out of there if you want to keep it. Generating another one will **delete** the *index.html* file in the application folder if there is already one present!

# Don't be shy and share your portals by making a Pull Request to [my repo of various portals](https://github.com/FlippieHacks/FlipperZeroEuropeanPortals/tree/main).

## What if my file is just too big?
You are limited to an index.html file of **MAX 20 ko** on Evil Portal. It's just the way it is. Otherwise, the portal will just **not start** and crash your Flipper.
As I said earlier, limit the colors of the SVG to stay between these limits.
Also nice to have a look at [RocketGod's HTML squasher](https://github.com/RocketGod-git/evilportal-htmlsquash) which is made for this. Thumbs up to him!

# What to expect from this app in the future
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
