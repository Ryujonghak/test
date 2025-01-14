# DS Cinema Project

> ** DS 시네마 **
- 기간 : 2022.12.19 ~ 2023.01.11
- 팀장 : 류종학 (https://github.com/Ryujonghak)
- 팀원 
  - 강수빈
  - 김철원
  - 문영석 
  - 정주희
  - 최아리 (https://github.com/choiari1002)
---
> **프로젝트 소개 (Project Introduction)**
> 
- 직관적인 디자인으로 빠른 영화정보 제공 및 예매가 가능하도록 디자인을 해보았습니다.
>
- We have designed an intuitive interface that provides fast movie information and allows for quick reservations.
---
> **기존 문제점 (Previous Issues)**
> 
- 기존 영화 예매 사이트의 경우 한 페이지에 광고 및 너무 많은 정보가 담겨 있어 가독성이 떨어집니다.
- 기존 영화 예매 사이트의 경우 예매까지 가는데 많은 클릭 수가 발생하여 결제에 많은 시간이 걸립니다.
>
- Existing movie reservation sites have poor readability due to too many advertisements and information on a single page.
- It takes too many clicks to make a reservation, resulting in a lengthy payment process.
---

> **개선점(Improvements)**
> 
- 영화 정보를 적절하게 배치 및 간소화 하여 페이지에서 정보를 찾는데 편리성을 증진시켰습니다.
- 직관적인 디자인을 통해 결제를 유도하여 빠른 결제가 가능하도록 디자인 하였습니다.
>
- We have streamlined and simplified the placement of movie information on the website to enhance convenience in finding information.
- We designed the website with an intuitive interface that encourages quick and easy payments.
---

> **기술스택(Technology Stack)**

- FrontEnd
    - `Vue.js`
    - `Node.js`
    - `Bootstrap`
    - `Vee validate`
- BackEnd
    - `Spring Boot`
    - `Spring Security`
    - `lombok`
    - `JWT`
    - `Gradle`
    - `JPA`
- DataBase
    - `ORACLE Cloud`
    - `ORACLE DATABASE`
- Configuration Management
    - `GitHub`
---

> **핵심기능 및 서비스 (Key Features and Services)** 

- `ImPort 결제 Api` : ImPort사의 결제 Api를 이용하여 결제서비스 기능 구현
- `JWT login` : JWT 토큰을 이용한 사이트 자체 로그인 기능 구현
- `social login`
    - `Google login API`
    - `Naver login API`
    - `Kakao login API`
>
- `ImPort Payment API` : Implementation of payment service using ImPort's payment API
- `JWT login` : Implementation of site-specific login function using JWT token
- `social login`
    - `Google login API`
    - `Naver login API`
    - `Kakao login API`

---
> **회고 (Retrospective)**
> 
- 코드 부분들이 조원들 모두 처음 배우는 과정이라 클린코드를 지향하지 못하고 여러 복수의 같은 함수등의 더티코드가 많았습니다 이것을 수정하여 정리할 예정입니다.
- 프로젝트 초기에 테이블 설계를 꼼꼼히 하지 않으면 전체적인 작업 진행도에 영향이 미치는 문제가 발생하는 것을 체감했습니다.
>
- There were many instances of dirty code, such as multiple identical functions, as all members were in the process of learning the code. We plan to clean and organize the code in the future.
- We learned the importance of thorough table design at the beginning of the project, as not doing so can negatively affect the overall progress of the project.
---

> **추가사항 (Additional Notes)** 
  - 현재 백엔드의 경우 Oracle Cloud를 이용하여 DB를 구축하였기 때문에 깃허브 레퍼지토리의 파일로는 정상작동이 되지 않습니다.
  - 프론트의 경우 계속해서 새로운 날짜로 검색 및 업데이트가 이루어집니다. 백엔드에 현재 날짜를 기점으로 영화 스케쥴및 데이터를 업로드해야 정상작동이 가능합니다.
  - 현재 원본은 두고 Rev1을 만들어 클린코드를 지향해 수정해가고 있습니다.
  >
  - The backend uses Oracle Cloud to host the database, so the files in the GitHub repository may not function properly.
  - The frontend continuously updates and searches with new dates. Uploading and updating movie schedules and data on the backend is necessary for proper functioning, based on the current date.
  - We are maintaining the original version and creating a Rev1 to strive for clean code.
