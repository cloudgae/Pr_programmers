-- 코드를 입력하세요
SELECT CATEGORY, sum(SALES) as TOTAL_SALES
from BOOK_SALES bs
join BOOK b on bs.BOOK_ID=b.BOOK_ID
where to_char(SALES_DATE,'yyyy-mm') = '2022-01'
group by CATEGORY
order by CATEGORY;