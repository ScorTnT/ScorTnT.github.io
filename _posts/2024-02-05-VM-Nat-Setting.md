---
layout: post
title: VM's network setting
categories: Linux
author: ScorTnT
banner:
    image: /assets/images/posts/DNS/vm_nat-host-only_1.png
---

## NAT

## NAT 네트워크

## 호스트 전용 어댑터

## 어댑터에 브릿지

Host-Only Adapter 설정은 이름에서부터 알 수 있듯이, 기본적인 인터넷 네트워크 환경을 제공하는 방식은 아니다.

보통은 host-only adapter + nat 설정을 동시에 사용하여 인터넷 사용은 nat을 통해서, 내부 네트워크 환경은 호스트 전용 어댑터 설정을 통해서 사용하지만 저자는 이러한 방식의 사용은 적절한 방법이 아니라고 생각되었고 호스트 전용 어댑터만을 사용해서 내부 네트워크 환경은 물론 외부 인터넷 연결 또한 해결하고자 했다. 

기본적으로 네트워크 환경에서 호스트 전용 어댑터로 설정하고 vm을 실행하여 ping을 날려보면 인터넷 어느 곳에도 연결이 되지 않을 것이다.

따라서 다음과 같은 설정을 통해서 호스트 전용 어댑터도 인터넷이 가능하게 만들어 줄 수 있다.

[ 제어판\네트워크 및 인터넷\네트워크 연결 ]에서 본인이 생성한 host-only adapter 환경에 Host 컴퓨터 속성에서 공유 > 인터넷 공유 활성화를 해주면 된다.

![](/assets/images/posts/DNS/vm_nat-host-only_1.png)

이후 이더넷 3 (VirtualBox Host-Only Adapter) 속성의 인터넷 프로토콜 버전 4를 확인해 보면 다음과 같이 ip 주소와 서브넷 마스크가 작성되어 있을 것이며, 아래에는 사용할 dns 서버 주소를 등록해 줄 수 있다.

![](/assets/images/posts/DNS/vm_nat-host-only_2.png)
다음과 같이 설정이 완료되었다면 본격적으로 네트워크 설정을 해줄 수 있다.

![](/assets/images/posts/DNS/vm_nat-host-only_3.png)
사용할 vm의 이더넷 장치의 설정을 열어서 다음과 같이 고정 ip 설정을 해주게 되면 외부 인터넷으로의 ping이 정상적으로 보내진다.

이더넷 장치 이름 확인은 다음과 같은 명령어로 확인할 수 있으며
>#ip ad<br>
>#ifconfig

CentOS7-x86-64-2009.iso 기준 장치 이름이 보통은 enp0s3 이고, 다음과 같은 명령어를 통해서 파일을 변경해주면 된다.
>#vi /etc/sysconfig/network-scripts/ifcfg-enp0s3
## Tool
CentOS7-x86-64-2009.iso<br>
Oracle VM VirtualBox 7.0.12-r159484<br>