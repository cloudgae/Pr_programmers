-- 코드를 입력하세요
select r1.FOOD_TYPE, r1.REST_ID, r1.REST_NAME, r1.FAVORITES
from REST_INFO r1
join (SELECT FOOD_TYPE,max(FAVORITES) as FAVORITES
        from REST_INFO
        group by FOOD_TYPE) r2
on r1.food_type=r2.food_type and r1.favorites=r2.favorites
order by r1.FOOD_TYPE desc;
