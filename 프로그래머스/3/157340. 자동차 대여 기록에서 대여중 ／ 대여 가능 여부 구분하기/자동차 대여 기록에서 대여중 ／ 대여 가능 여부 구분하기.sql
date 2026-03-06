-- 코드를 입력하세요
SELECT CAR_ID, max(CASE 
                WHEN '2022-10-16' between to_char(START_DATE, 'yyyy-mm-dd') and to_char(END_DATE, 'yyyy-mm-dd')
                THEN '대여중'
                ELSE '대여 가능'
                END) as AVAILABILITY
from CAR_RENTAL_COMPANY_RENTAL_HISTORY
group by CAR_ID
order by CAR_ID desc;