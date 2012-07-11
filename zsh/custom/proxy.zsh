alias proxy='export http_proxy=http://192.168.1.248:3128;export HTTPS_PROXY=$http_proxy;export HTTP_PROXY=$http_proxy;export FTP_PROXY=$http_proxy;export https_proxy=$http_proxy;export ftp_proxy=$http_proxy;'
alias noproxy='export http_proxy='';export HTTPS_PROXY=$http_proxy;export HTTP_PROXY=$http_proxy;export FTP_PROXY=$http_proxy;export https_proxy=$http_proxy;export ftp_proxy=$http_proxy;'

# stuff to run only if I am at work (change 3.28 to your work static IP)
if [ `ifconfig | grep 10.10.0.28 | wc -l` = 1 ]; then
    proxy
fi
