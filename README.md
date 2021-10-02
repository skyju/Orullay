# 오를래 프로젝트
> **MZ세대를 위한 등산 커뮤니티**
----
# overview 

* 등산을 즐기는 사람들이 다양한 방식으로 어울릴 수 있도록 공간을 제공하는 웹 기반 플랫폼
<img src="https://user-images.githubusercontent.com/81676847/135722988-8b8efde7-caf9-4ec6-a27c-1a67eeac3163.png" width="700" />

* 프로세스 흐름도
<img src="https://user-images.githubusercontent.com/81676847/135722990-6663c7d7-301f-4d88-a92f-a5c75852edb9.png" width="700" />

* [프로젝트 설명서](https://docs.google.com/presentation/d/15fc_gEhkEjWPo5u4R_Flv6MVAXz-t6jB/edit?usp=sharing&ouid=118217863993416736050&rtpof=true&sd=true)
* [시연영상](https://youtu.be/FoNsPBWeIA4)

---
## 기술 / 구조
* 사용 언어 및 프레임워크
    *   `Java`
    *   `Spring Framework` `SpringBoot`
    *   `jsp` `jstl` `EL`
* 웹 표준 및 프론트
    * `html5` `css3` `JavaScript` 
    * `jQuery` `Ajax` `Bootstrap`
* DB
    * `MySQL` `Amazon RDS`
    * `MyBatis`
* API
    * `KakaoMap` `Kakao` `NAVER`
    * `산림청 API`
    * `OpenWeather`
* 서버
    * `Maven` `Apache Tomcat`
* 배포 
    * `AWS EC2` `AWS S3`
---
## 아키텍쳐 구성도
* 처음에 Spring Legacy로 모든 프로젝트 완성 후 rest 형식 구현을 위해 일부 부분을 Spring Boot 프로젝트로 분리 
* 스프링에 메인 서버를 두고 비동기 통신 사용부분 스프링 부트로 구현해서 레스트 서버와 통신
<img src="https://user-images.githubusercontent.com/81676847/135724692-367003d2-d61f-4161-89e4-9a2230d4ff21.png" width="700" />

---
## 담당기능
* 산 부분
    * 산림청에서 제공하는 산에 대한 데이터 가공
    * 요청하는 산의 지역별 리스트를 레스트서버에서 비동기통신으로 받아온 후 이름순, 높이순 정렬
    * Kakao-map API이용해서 지역별, 전국별 산 마킹
* 멤버
    * 로그인, 네아로 api로그인 , 회원가입, 회원 정보수정, 회원탈퇴등 전반적인 회원 관리
* 관리자
    *  회원, 피드, 크루 게시판 관리하는 관리자 페이지
