Description
=====================

Podcaster is an application written in Python with GTK library that allows you to download audio/video from YouTube movies and playlists in easy way. It is based on youtube-dl. Why it's called Podcaster? Because the main reason why I created this was that I wanted to download podcasts (yeah, so tricky) in fast, comfortable way.

Config file
=====================
Config file should be in ~/.config/podcaster/config. 
It has only 3 lines:

➣ e-mail - e-mail address of your YouTube account, needed only for private playlists

➣ link - link to video/playlists you want to download

➣ path - where you want to save files (absolute path)


Installing
=====================


* Install all dependencies:
    
    1) ```
        python3
        ```

    2) ```
        python3-gi
        ```

    3) ```
        libgtk>=3.0
        ```

    4) ```
        youtube-dl>=2016.07.26.2
        ```
    
* Run install.sh shell script as a user

    ```
    ./install.sh
    ```

Notes
=====================
If you want to download something from private playlist, select 'Podcaster private playlist' from application menu or run podcaster in terminal.

Program layout:
=====================
![program layout](https://raw.github.com/qeni/podcaster/master/img/still.png)
![program layout](https://raw.github.com/qeni/podcaster/master/img/working.png)
