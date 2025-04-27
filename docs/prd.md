1. 프로젝트 개요 
  • 서비스명  
    – MORI
  • 목표  
    – 살아계신 가족과 대화 증진  
    – 소중한 추억 기록  
  • 슬로건  
    – 기억은 관계를 잇는 매개체  
  • 주요 타깃  
    – 20~40대 자녀 세대 (부모·조부모와 소통·관계 회복 원하는 사용자)  

2. 핵심 기능 (MVP)  
  2.1 User Flow  
    1. 웹사이트 진입
       • 일반 접속: 역할 선택 필요
       • 공유 링크 접속: 자동으로 상대방 역할 할당
    2. 관계 설정
       • 첫 번째 사용자
         - 역할 선택 (자녀/부모)
         - 오늘의 질문 확인
         - 답변 입력 (수정 불가)
         - 공유 링크 생성
       • 두 번째 사용자
         - 공유 링크로 접속
         - 자동으로 상대방 역할 할당
         - 관계 설정 완료
         - 답변 입력 (수정 불가)
         - 새로운 공유 링크 생성
    3. 답변 공유 및 확인
       • 첫 번째 사용자
         - 두 번째 사용자의 공유 링크로 접속
         - 서로의 답변 확인 가능
       • 두 번째 사용자
         - 자신이 생성한 공유 링크로 접속
         - 서로의 답변 확인 가능

  2.2 주요 기능  
    • 모바일 우선 반응형 웹 (Next.js + TailwindCSS)  
    • 공유 링크 기능
      - 짧은 해시 코드 기반 (예: mori.com/s/abc123)
      - 해시 코드에 관계 ID와 역할 정보 포함
      - 24시간 후 링크만 만료 (관계는 유지)
      - 양방향 공유 지원
    • 자동 역할 할당 (공유 링크 접속 시)
    • 답변 공유 및 확인
      - 답변 입력 후에만 공유 링크 생성 가능
      - 답변 수정 불가
      - 상대방의 공유 링크로 접속해야 답변 확인 가능

3. DB 구조 (Supabase)  
  • Users  
    – id (PK), created_at  
  • Relationships  
    – id (PK), user1_id→Users.id, user1_role(child/parent), user2_id→Users.id, user2_role(child/parent), created_at  
  • Questions  
    – id (PK), text, category, created_at  
  • Answers  
    – id (PK), user_id→Users.id, question_id→Questions.id  
    – answer_text, created_at  
  • ShareLinks
    – id (PK), relationship_id→Relationships.id, hash_code, created_by_user_id→Users.id, created_at, expires_at

4. 기술 스택  
  • Frontend & Backend: Next.js 15 (App Router)
  • Styling: TailwindCSS (Mobile First)
  • DB: Supabase (PostgreSQL)
  • 배포: Vercel (프론트엔드 + 백엔드)
  • 아키텍처: Server Components + Server Actions

5. 페이지 구조 (App Router)
  • / (메인 페이지)
    - 서비스 소개
    - 역할 선택 섹션
      • 자녀/부모 선택
    - 메인 대시보드 섹션
      • 오늘의 질문
      • 답변 입력
      • 공유하기 기능
  • /app
    - /page.tsx (메인 페이지)
    - /layout.tsx (공통 레이아웃)
    - /loading.tsx (로딩 상태)
    - /error.tsx (에러 처리)
  • /app/answers
    - /[hash]/page.tsx (답변 확인 페이지)
  • /app/share
    - /[hash]/page.tsx (공유 링크 페이지)

6. 데이터 처리
  • 서버 사이드 데이터 처리
    - Server Components에서 초기 데이터 로드
    - Server Actions로 데이터 변형
  • 클라이언트 상태 관리
    - React Context로 전역 상태 관리
    - URL 파라미터로 관계/역할 정보 전달
  • 페이지 새로고침 시
    - SSR을 통한 데이터 복원
    - URL 파라미터 기반 상태 복구

7. 서버 액션 스펙 (Next.js Server Actions)  
  • 초기 데이터 로드
    – GET    /api/init           : Server Component에서 직접 데이터 조회
  • 관계 생성  
    – POST   /api/relationships  : Server Action으로 관계 생성
  • 오늘의 질문 조회  
    – GET    /api/questions/today : Server Component에서 직접 데이터 조회
  • 공유 링크 생성
    – POST   /api/share         : Server Action으로 공유 링크 생성
  • 답변 등록  
    – POST   /api/answers       : Server Action으로 답변 등록
  • 답변 확인
    – GET    /api/answers/[hash] : Server Component에서 직접 데이터 조회

