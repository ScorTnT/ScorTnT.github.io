---
layout: post
title: Linux's IP
subtitle: Virtual Machine의 ip 확인
author: ScorTnT
banner:
    image: /assets/images/posts/VM/VM_ip_1.png
categories: Linux
---

-------
2025-05-22 추가<br>
ip ad 명령어를 통해 확인 가능하다.<br>

-------


기본적으로 linux에서는 ipconfig 명령어를 사용하여 ip를 확인할 수 없고<br>
ip address를 통해 ip확인이 가능하며,

보통은 net-tools를 설치하여 ifconfig 명령어를 통해 ip를 확인해야 한다.

> sudo yum install -y net-tools

명령어를 통해서 net환경을 위한 툴들을 다운받을 수 있고 ifconfig가 포함되어 있다.

![ip_1](/assets/images/posts/VM/VM_ip_1.png)

ifconfig를 이용하면 Linux의 ip를 확인할 수 있으며 빨간 박스로 표시된 부분이 ip값이다.

## Tool
CentOS7-x86-64-2009.iso<br>
Oracle VM VirtualBox 7.0.12-r159484<br>