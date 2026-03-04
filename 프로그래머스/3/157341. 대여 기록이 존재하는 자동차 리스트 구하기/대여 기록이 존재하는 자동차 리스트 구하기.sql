-- 코드를 입력하세요
SELECT distinct c.CAR_ID 
from CAR_RENTAL_COMPANY_CAR c, CAR_RENTAL_COMPANY_RENTAL_HISTORY ch
where c.CAR_ID=ch.CAR_ID and c.CAR_TYPE='세단' and to_char(ch.START_DATE, 'mm')='10'
order by CAR_ID desc;