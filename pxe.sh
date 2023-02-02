# yum源更新为阿里云源
cd /etc/yum.repos.d/ && mkdir repo_bakdir
mv /etc/yum.repos.d/*.repo /etc/yum.repos.d/repo_bakdir/
wget -O /etc/yum.repos.d/CentOS-Base.repo https://mirrors.aliyun.com/repo/Centos-7.repo
yum clean all
yum makecache fast

# 安装需要的软件 httpd tftp dhcp
yum -y install httpd dhcp tftp-server syslinux
