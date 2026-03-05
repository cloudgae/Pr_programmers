-- 코드를 입력하세요
SELECT USER_ID, NICKNAME,
        CITY || ' ' || STREET_ADDRESS1 || ' ' || STREET_ADDRESS2 as "전체주소",
        substr(TLNO, 1, 3) || '-' || substr(TLNO, 4, 4) || '-' || substr(TLNO, 8, 4) as "전화번호"
from USED_GOODS_USER u
join (select WRITER_ID, count(BOARD_ID)
        from USED_GOODS_BOARD
        group by WRITER_ID
        having count(BOARD_ID) >= 3) b
on u.USER_ID=b.WRITER_ID
order by USER_ID desc;