# #czp's of emacs config

~~~
;; -*- lexical-binding: t -*-
;; . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
;;                 _              __                                 
;;   ___ _____ __ ( )___    ___  / _|   ___ _ __ ___   __ _  ___ ___ 
;;  / __|_  / '_ \|// __|  / _ \| |_   / _ \ '_ ` _ \ / _` |/ __/ __|
;; | (__ / /| |_) | \__ \ | (_) |  _| |  __/ | | | | | (_| | (__\__ \
;;  \___/___| .__/  |___/  \___/|_|    \___|_| |_| |_|\__,_|\___|___/
;;          |_|
;;  . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
~~~

## #install

~~~sh
$ pacman -Syu emacs
$ cd ~/
$ cp -r ~/.emacs.d/ ~/.emacs.d.bak
$ git clone https://github.com/zhipeng33/.emacs.d ~/
$ pacman -S ccls ripgrep
~~~

## #Directory Structure

~~~
/home/xox/.emacs.d
├── elpa			#package
├── init.el			#init
├── lisp			#emacs lisp
├── README.md		#README
└── var				#log

3 directories, 2 files
~~~
