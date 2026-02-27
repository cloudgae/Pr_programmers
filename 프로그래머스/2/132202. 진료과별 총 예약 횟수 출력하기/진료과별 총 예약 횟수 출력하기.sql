-- 코드를 입력하세요
SELECT MCDP_CD, count(APNT_NO) as "5월예약건수"
from APPOINTMENT
where to_char(APNT_YMD,'yyyy-mm') = '2022-05'
group by MCDP_CD
order by 2, 1;
