-- 코드를 입력하세요
select distinct CART_ID
from CART_PRODUCTS
where CART_ID in (SELECT CART_ID
                from CART_PRODUCTS
                where NAME = 'Milk') and NAME = 'Yogurt'
order by CART_ID

--milk를 가진 cart id를 대상으로 yogurt를 가졌는지 확인