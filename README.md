# Project-PCLE

Project PCLE은 2022 클라우드 아이디어 공모전 출품작 효율적인 계획 관리, 프로젝트 관리를 위한 User 기반 클라우드 툴 서비스, PCLE(피클) 애플리케이션 개발을 위한 프로젝트입니다.

![image](https://user-images.githubusercontent.com/109898791/202535640-74f54232-f3d6-48d2-8f3a-8e3e07508d3a.png)

현대인의 일상에서 계획 관리, 프로젝트 관리는 매우 중요하기 때문에 이를 Cloud 기술의 장점을 적용하여 Solution을 제시하였습니다.

![image](https://user-images.githubusercontent.com/109898791/202535877-8a0a46f4-752d-4338-bccd-93783e252da4.png)

PCLE의 애플리케이션 개발은 핵심 아이디어에 대한 상세한 이해를 돕기 위함이며, 일부 기능에 대한 구현은 생략되었습니다.
다음과 같이 실용성, 편리성, 발전 가능성 측면에서 애플리케이션으로의 활용이 필연적이기에 애플리케이션 서비스를 제안하였습니다.

![image](https://user-images.githubusercontent.com/109898791/202536409-cc99f4a5-d5c6-406a-a8f3-f99cb37bb19a.png)

[파이프 라인]

PCLE의 파이프 라인은 다음과 같습니다.

![image](https://user-images.githubusercontent.com/109898791/202723188-371cdacc-8ca6-44e6-bd3d-0cf0ce4b7051.png)


프로그램 설치 URL : https://drive.google.com/file/d/10iytyxfiLYsZGXUX5ELg3Z-vWvDKKo9m/view?usp=sharing

APP Description 애플리케이션 사용방법은 다음 이미지를 참고하시기 바랍니다.

[실행화면과 홈 화면]

![image](https://user-images.githubusercontent.com/109898791/202702886-5d813801-faed-4a3b-b10f-190531efed9e.png)

① 실행화면
실행화면은 애플리케이션 실행시 표시되는 화면입니다. PCLE 로고가 표시되며 1초~2초 부팅을 시작합니다. PCLE의 두 가지 강력한 장점인(효율적인 일정 관리, 체계적인 업무 수행)을 언급하여 User의 PCLE 사용을 독려합니다.

② 홈 화면
홈 화면은 실행화면 이후 표시되는 기본 화면입니다. 홈 화면에 대한 상세 기능은 다음과 같습니다.

∙ 좌측 상단에는 PCLE 로고를 배치하였고 우측 상단에는 User 간 채팅이 가능한 채팅 아이콘 그리고 구체적인 알림을 확인할 수 있는 알림 아이콘을 배치하였습니다.

∙ 초록색 상태표시바는 날짜와 요일을 표시하고 User의 정보 그리고 친밀도를 표현하는 문구를 표시합니다. 

∙ PLAN 관리 창에서는 현재 날짜를 기준으로 User가 직접 추가한 PLAN에 대한 종료 날짜를 D-DAY 방식으로 표시하고 PLAN 이름을 표시합니다. 표시되는 PLAN은 총 PLAN 개수와 관계없이 D-DAY를 기준으로 가장 종료 날짜가 빠른 상위 4개의 PLAN을 우선적으로 표시합니다. 상단의 > 버튼을 누르면 PLAN 창으로 이동하여 상세한 PLAN 관리가 가능합니다. 

∙ PROJECT 관리 창에서는 가장 최근 작업한 3개의 PROJECT 파일형식(아이콘)과 이름을 순차적으로 표시합니다. 우측 상단의 > 버튼을 누르면 PROJECT 창으로 이동하여 상세한 PROJECT 관리가 가능합니다.

∙ Neighbor 관리 창에서는 가장 최근 컨택한 User 또는 Team을 우선적으로 3개 표시합니다. 상단의 > 버튼을 누르면 MY 창으로 이동하여 상세한 Neighbor 관리가 가능합니다.

∙ 최하단의 메뉴 바는 화면 전환이 가능한 5개의 버튼을 배치하여 User가 보다 화면 전환을 편리하게 할 수 있도록 하였습니다. 

[PLAN 화면]

![image](https://user-images.githubusercontent.com/109898791/202705049-61ca9af5-e30a-45f7-a03c-2c9b7878a742.png)

홈 화면의 PLAN 관리 창의 > 버튼 그리고 메뉴 바의 PLAN 버튼을 누르면 PLAN 화면으로 이동하게 됩니다.

① PLAN 화면 1 (월간 PLAN 관리, 세부 PLAN 관리)
PLAN 화면 1은 PLAN 창이 표시되었을 때 가장 먼저 표시되는 화면입니다.

∙ 월간 PLAN 관리 창에서는 달력형 대시보드에 현재 날짜와 요일 그리고 PLAN별 마감일을 확인할 수 있도록 표시합니다. 예를 들어 그림의 이미지에서는 현재 날짜가 10월 6일 목요일이므로 10월 달의 달력이 표시되고 D-DAY 기준으로 10월 8일(토)에 PROJECT A 제안서 2차 수정이 계획되어 있음을 초록색의 ● 로 날짜 하단에 표시합니다. 

∙ 홈 화면에서는 총 PLAN의 수와 관계없이 최대 4개까지 표시되지만, 세부 PLAN 관리 창에서는 스크롤을 통해 총 PLAN을 모두 확인할 수 있습니다. 
∙ 세부 PLAN 관리 창에서는 PLAN의 수정 그리고 추가 삭제가 가능합니다. 우측 상단의 + 버튼을 누르면 새로운 PLAN을 추가할 수 있습니다. 각 PLAN의 수정과 삭제는 항목을 직접 눌렀을 때 서브 창이 출력되며 PLAN의 이름, 마감일, 알림 서비스 여부 체크 등 PLAN에 대한 여러 가지 설정이 가능합니다.

② PLAN 화면 2 (추천 PLAN, AI 패턴 분석)
PLAN 화면 2는 PLAN 창이 표시되었을 때 PLAN 화면 1을 스크롤 하면 순차적으로 표시되는 화면입니다.

∙ 추천 PLAN 창에서는 User의 PCLE에서 작업한 파일의 확장자명을 분석하여 문서 파일의 비중을 표시합니다. 그리고 User의 ansd서 양을 작업 속도로 계산하여 권장 일 평균 작업시간과 권장 주 평균 작업횟수를 추천 시스템 방식으로 제시합니다.
∙ PROJECT의 유형과 진행률을 분석하여 개인 업무 비중 협업 비중을 표시하고 전체 진행률을 숫자로 표시하여 User가 직관적으로 PLAN과 PROJECT에 대해 인지하고 계획을 수립할 수 있도록 도움을 줍니다.

∙ AI 패턴 분석 창에서는 User의 PCLE 사용 스크린 타임과 작업 시간, 작업 속도에 기반한 패턴 분석 내용과 PLAN 관리 내용에 기반하여 수치형 텍스트를 표시합니다.

∙ 일 평균 작업시간, 주 작업 횟수, 주 평균 제출해야 할 문서의 수, 월별 프로젝트의 개수 등
User가 본인의 습관을 직관적으로 인지할 수 있고 시각화된 정보를 통해 효율적이고 체계적인 PLAN 관리가 가능하도록 돕습니다.

[PROJECT 화면]

![image](https://user-images.githubusercontent.com/109898791/202703087-d9c34749-f08f-49b4-8053-09e9d50fe936.png)

∙ PROJECT 관리창에서는 User가 직접 추가한 PROJECT 파일을 아이콘과 파일명으로 표시합니다. 아이콘은 파일의 확장자를 기반으로 생성되어 손쉽게 파일 형식을 알아볼 수 있습니다.

∙ PROJECT 파일 이름은 User가 직접 설정한 형식에 맞게 자동으로 업데이트됩니다. 예를 들어 PROJECT A 제안서라는 파일명을 설정하고 자동 라벨링 기능을 활용하면 수정 날짜와 작업한 User명을 자동으로 PROJECT 파일 이름에 반영하여 체계적인 버전 관리가 가능합니다.

∙ 하단에는 PROJECT 파일의 삭제, 공유, 추가가 가능한 버튼을 배치하였습니다. 각 PROJECT 파일에 대한 수정은 파일을 누른 뒤 표시되는 팝업 창에서 가능하도록 하였습니다.

∙ PROJECT 설정창은 PROJECT 파일을 추가하거나 수정할 때 표시됩니다. 

∙ PROJECT NAME에서 PROJECT 명을 입력할 수 있습니다.

∙ PROJECT MODE에서는 PROJECT 유형인 개인 / 협업 프로젝트를 선택할 수 있습니다.

∙ PROJECT FILE의 형식을 지정할 수 있고 DEAD LINE을 설정할 수 있습니다.

∙ AUTO LABELING FORMAT에서는 파일의 효율적인 버전 관리를 위해 User가 직접 지정한 FORMAT으로 수정된 파일의 이름을 관리할 수 있습니다.

∙ AUTO MANAGEMENT는 DEADLINE에 기반하여 자동 알림 서비스를 수신할지의 여부를 선택할 수 있습니다. 이외에도 중요도 설정, 난이도 설정 등 PROJECT 파일의 세부 내용을 설정할 수 있습니다.

[데모 영상]

데모 영상 URL : https://youtu.be/HBlA1LOl-gU


[팀 소개]

TEAM PCLE은 Young Seok Hwang, Sang Jun Han으로 구성되어 있습니다.

Young Seok Hwang (PM) : 프로젝트 총괄, 아이디어 구체화, 제안서 작성

Sang Jun Han (PL) : 개발 총괄, 아이디어 피드백, 파이프 라인 제시

산출물 코드 작성 기여도 Young Seok Hwang (10%), Sang Jun Han (90%)


개발은 Google Flutter를 활용하였으며 사용한 라이브러리는 Code를 참고하시기 바랍니다.
