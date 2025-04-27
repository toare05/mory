# MORI Project Todo List

## 1. 초기 프로젝트 설정
- [x] Next.js 프로젝트 생성 (with TypeScript, TailwindCSS)
- [x] Supabase 설정
  - [x] Supabase 프로젝트 생성
  - [x] Supabase Client 설정
  - [x] 환경 변수 설정 (.env)
- [x] 기본 디렉토리 구조 설정
  - [x] components/
  - [x] lib/
  - [x] hooks/
  - [x] types/
  - [x] styles/

## 2. 데이터베이스 설정 (Supabase)
- [x] 테이블 생성
  - [x] Users
  - [x] Relationships
  - [x] Questions
  - [x] Answers
  - [x] ShareLinks
- [x] 초기 데이터 삽입
  - [x] 샘플 질문 데이터

## 3. 페이지 구현
- [ ] App Router 구조 구현
  - [ ] layout.tsx (공통 레이아웃)
  - [ ] page.tsx (메인 페이지)
  - [ ] loading.tsx
  - [ ] error.tsx
- [ ] 메인 페이지 (/)
  - [ ] 서비스 소개 섹션
  - [ ] 역할 선택 섹션
  - [ ] 메인 대시보드 섹션
- [ ] 답변 확인 페이지 (/answers/[hash])
- [ ] 공유 링크 페이지 (/share/[hash])

## 4. 컴포넌트 구현
- [ ] 공통 컴포넌트
  - [ ] Button
  - [ ] Input
  - [ ] Card
  - [ ] Modal
- [ ] 기능 컴포넌트
  - [ ] RoleSelector
  - [ ] QuestionCard
  - [ ] AnswerForm
  - [ ] ShareLinkGenerator

## 5. 서버 액션 구현
- [ ] 초기 데이터 로드
- [ ] 관계 생성
- [ ] 오늘의 질문 조회
- [ ] 공유 링크 생성
- [ ] 답변 등록
- [ ] 답변 확인

## 6. 상태 관리
- [ ] React Context 설정
  - [ ] 사용자 상태
  - [ ] 관계 상태
- [ ] URL 파라미터 처리
  - [ ] 공유 링크 파싱
  - [ ] 역할 정보 처리

## 7. 스타일링
- [ ] TailwindCSS 설정
  - [ ] 테마 컬러 설정
  - [ ] 타이포그래피 설정
  - [ ] 반응형 디자인
- [ ] 다크 모드 지원

## 8. 테스트 및 최적화
- [ ] 단위 테스트 설정
- [ ] 컴포넌트 테스트
- [ ] 성능 최적화
  - [ ] 이미지 최적화
  - [ ] 코드 스플리팅
  - [ ] SSR/SSG 최적화

## 9. 배포
- [ ] Vercel 배포 설정
- [ ] 환경 변수 설정
- [ ] CI/CD 파이프라인 구성 