select a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, sum(s.SALES*b.PRICE) as TOTAL_SALES
from BOOK b
join (select s.BOOK_ID, s.SALES_DATE, s.SALES
        from BOOK_SALES s
        where to_char(s.SALES_DATE, 'yyyy-mm') = '2022-01') s
on b.BOOK_ID=s.BOOK_ID
join AUTHOR a
on b.AUTHOR_ID=a.AUTHOR_ID
group by a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY
order by a.AUTHOR_ID asc, b.CATEGORY desc;