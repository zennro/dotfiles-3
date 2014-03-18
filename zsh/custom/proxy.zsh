alias proxy='export http_proxy=http://10.61.9.74:3128;export HTTPS_PROXY=$http_proxy;export HTTP_PROXY=$http_proxy;export FTP_PROXY=$http_proxy;export https_proxy=$http_proxy;export ftp_proxy=$http_proxy;'
alias noproxy='unset http_proxy;unset HTTPS_PROXY;unset HTTP_PROXY;unset FTP_PROXY;unset https_proxy;unset ftp_proxy'
alias proxy-git='git config --global http.proxy http://10.61.9.74:3128; git config --global https.proxy http://10.61.9.74:3128'

# run only if I am at work
if [ `ifconfig | grep 10.61.9 | wc -l` = 1 ]; then
    proxy
    proxy-git
fi
#if [ `ifconfig | grep 192.168.2 | wc -l` = 1 ]; then
#    proxy
#fi
