-- 코드를 입력하세요
SELECT p.PRODUCT_ID, p.PRODUCT_NAME, sum(price*amount) TOTAL_SALES
from FOOD_PRODUCT p
join FOOD_ORDER o on p.PRODUCT_ID=o.PRODUCT_ID
where to_char(o.PRODUCE_DATE, 'yyyy-mm')='2022-05'
group by p.PRODUCT_ID, p.PRODUCT_NAME
order by TOTAL_SALES desc, p.PRODUCT_ID asc;