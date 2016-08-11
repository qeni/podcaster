Description
=====================

Podcaster is an application written in Python with GTK library that allows you to download audio/video from YouTube movies and playlists in easy way. It is based on youtube-dl. Why it's called Podcaster? Because the main reason why I created this was that I wanted to download podcasts (yeah, so tricky) in fast, comfortable way.

Config file
=====================
Config file should be in ~/.config/podcaster/podcaster.ini. All entries and
options can be set automatically with this file.


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
        libgtk-3-0
        ```

    4) ```
        python-configparser 
        ```

    5*) ```
        lame and libav-tools 
        ```

 *for mp3 format

* Install youtube-dl

    ```
    sudo wget https://yt-dl.org/downloads/latest/youtube-dl -O /usr/local/bin/youtube-dl
    ```

    ```
    sudo chmod a+rx /usr/local/bin/youtube-dl
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
![program layout](https://raw.github.com/qeni/podcaster/master/img/clean.png)
![program layout](https://raw.github.com/qeni/podcaster/master/img/busy.png)