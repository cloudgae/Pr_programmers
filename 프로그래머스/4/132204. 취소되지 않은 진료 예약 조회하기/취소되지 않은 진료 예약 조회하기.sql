-- -- 코드를 입력하세요
-- 2022년 4월 13일 => to_char(APNT_YMD, 'yyyy-mm-dd') = '2022-04-13' => APPOINTMENT
-- 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회 => APNT_CNCL_YN = 'N' and MCDP_CD= 'CS' => APPOINTMENT
-- 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력 
-- APNT_NO, PT_NAME, PT_NO, MCDP_CD, DR_NAME, APNT_YMD
-- APPOINTMENT, PATIENT, PATIENT/APPOINTMENT, DOCTOR/APPOINTMENT, DOCTOR, APPOINTMENT
-- 결과는 진료예약일시를 기준으로 오름차순 정렬
SELECT a.APNT_NO, p.PT_NAME, a.PT_NO, a.MCDP_CD, d.DR_NAME, a.APNT_YMD
from APPOINTMENT a
join PATIENT p on a.PT_NO=p.PT_NO
join DOCTOR d on a.MDDR_ID=d.DR_ID
where to_char(a.APNT_YMD, 'yyyy-mm-dd') = '2022-04-13' and a.APNT_CNCL_YN = 'N' and a.MCDP_CD= 'CS'
order by APNT_YMD asc;