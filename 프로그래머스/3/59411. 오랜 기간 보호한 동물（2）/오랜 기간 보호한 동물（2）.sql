-- 입양을 간 동물 중
-- 보호 기간이 가장 길었던 동물 
-- 두 마리의 아이디와 이름을 조회
-- 보호 기간이 긴 순으로 조회

select *
from (SELECT i.ANIMAL_ID, i.NAME
    from ANIMAL_INS i
    join ANIMAL_OUTS o on i.ANIMAL_ID=o.ANIMAL_ID
    order by (o.DATETIME - i.DATETIME) desc)
where rownum <= 2;