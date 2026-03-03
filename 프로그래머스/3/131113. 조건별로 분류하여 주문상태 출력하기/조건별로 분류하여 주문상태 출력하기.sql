-- 코드를 입력하세요
SELECT ORDER_ID, PRODUCT_ID, to_char(OUT_DATE, 'yyyy-mm-dd') as OUT_DATE,
        CASE 
        WHEN to_char(OUT_DATE, 'yyyy-mm-dd') <= '2022-05-01' THEN '출고완료'
        WHEN OUT_DATE is null THEN '출고미정'
        ELSE '출고대기'
        END "출고여부"
from FOOD_ORDER
order by ORDER_ID;