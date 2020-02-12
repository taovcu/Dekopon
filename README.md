# Dekopon Manual (丑橘阅读器用户手册)
Dekopon is a reader specifically for Chinese English learners. It supports pdf, txt, and a few image format files. 

## 1. Install Dependencies安装依赖包
Linux用户
$./settings.sh Linux
Mac用户
$./settings.sh MAC

## 2. Run运行
$ ./Dekopon
Select a pdf, txt, or image file to open.
选择打开pdf，txt，或者图片文件。

## 3. 图标功能
Icons and its functions are listed in order:  
图标及其功能，按顺序如下：

![GitHub Logo](https://github.com/taovcu/Dekopon/blob/master/symbols/dekopon_manual.jpg)

下列功能需要选择文字，然后点击对应的操作按钮：
翻译，发音，添加单词本，同义词，语音输入，维基百科，笔记，复述记忆，语法检查，谷歌地图 

下列功能只需要点击对应的操作按钮：
显示单词本，显示笔记，云同步

## 4. 开启云功能(Optional)
Edit **settings.py** file:

* Enable Google drive file storage

  google_drv = 1

* Enable Google map

  google_map = 1

Please refer to create_googleDrive_secret.txt to obtain your Google Drive and Google Map API credential.
Write Drive API Credential to Dekopon root folder as **client_secrets.json**
Write Map API Credential to Dekopon root folder as **gmap_api_key.txt**  
