from fabric.api import *


def greeting(msg):
    print("Good {}".format(msg))


def system_info():
    print("Disk Space")
    local("df -h")

    print("RAM Size")
    local("free -m")

    print("System Uptime")
    local("uptime")

def remote_exec():
    print("Get systeminfo")
    run("hostname")
    run("uptime")
    run("df -h")
    run("free -h")

    sudo("yum install mariadb-server -y")
    sudo("systemctl start mariadb")
    sudo("systemctl enable mariadb")

def web_setup(WEBURL, DIRNAME):
    print("###############################################################")
    local("apt install zip unzip -y")

    print("###############################################################")
    print("Installing Dependencies")
    sudo("yum update -y")
    sudo("yum install httpd wget zip unzip -y")

    print("###############################################################")
    print("Start and enable service")
    sudo("systemctl start httpd")
    sudo("systemctl enable httpd")

    print("###############################################################")
    print("Downloading and pushing website to webservers")
    print("###############################################################")
    local("wget {} -O website.zip".format(WEBURL))
    local("unzip -o website.zip")

    with lcd(DIRNAME):
        local("zip -r tooplate.zip * ")
        put("tooplate.zip", "/var/www/html/", use_sudo=True)

    with cd("/var/www/html/"):
         sudo("unzip -o tooplate.zip ")
         sudo("rm -rf tooplate.zip")
    sudo("systemctl restart httpd")
    print("Website setup is done")
