# 해커톤 WeatherApp 만들기 

### 참여 기간 : 2022-10-05 ~ 2022-10-14

### [1단계] UI/UX 집중

#### 기능 구현 내용
- 스플래쉬 화면 : 로티 사용
- 위치 정보 사용 : 설정 페이지에서 위치 사용 여부 체크, 거부시 알림창으로 확인
                설정 후 위치사용 토글로 위치사용 거부설정하면 설정창으로 이동
- 기본 화면 : tableview 사용, 밀어서 삭제 기능 구현
- 날씨 상세 화면 : collectionview 사용
- 지역 목록 추가 : tableview 사용, 선택시 전 화면으로 데이터 전달(custom delegate 구현)
- MVC 패턴 사용
- navigation 사용

#### 회고
- API 없이 데이터 묶음 이용해 만들어 기능 구현에 아쉬움이 남음
- 해커톤이 끝나고도 아쉬웠던 부분에 대해 지속적으로 수정함
- delegate 구현시 데이터가 중복으로 들어가는 부분이 생김

<img alt="기본화면" src="https://user-images.githubusercontent.com/107897929/198329791-724d7541-3496-45fc-8cca-6f0ec076c69d.png" width="200" height="400"/> <img alt="상세화면" src="https://user-images.githubusercontent.com/107897929/198329804-bbf0bd58-b3aa-4c95-896d-e992e2e6a951.png" width="200" height="400"/>

기본화면 / 날씨 상세화면

