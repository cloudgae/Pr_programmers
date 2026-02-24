-- 코드를 입력하세요
SELECT extract(year from SALES_DATE) as YEAR, extract(month from SALES_DATE) as MONTH,
        GENDER, count(distinct os.user_id) as USERS
from ONLINE_SALE os
join USER_INFO ui on os.user_id=ui.user_id
where GENDER is not null
group by 1,2,3
order by 1,2,3;

# select user_id, gender
# from USER_INFO
# order by 2;
# SELECT os.*, ui.*
# from ONLINE_SALE os
# join USER_INFO ui on os.user_id=ui.user_id
# order by gender