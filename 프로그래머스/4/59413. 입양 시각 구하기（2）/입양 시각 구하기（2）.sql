-- 코드를 입력하세요

-- (1)시간대별 입양 건수 집계(o)
-- SELECT to_char(DATETIME, 'HH24') as HOUR, count(ANIMAL_ID) as COUNT
-- from ANIMAL_OUTS 
-- group by to_char(DATETIME, 'HH24');

-- (2)0~23시간 목록 생성(l)
-- select (level-1) as HOUR
-- from dual
-- connect by level <=24;

-- (3)l기준 o를 외부조인->count값 없는 시간은 null 처리

select l.HOUR as HOUR, NVL(o.count, 0) as COUNT
from (select (level-1) as HOUR
        from dual
        connect by level <=24) l 
left join (SELECT to_char(DATETIME, 'HH24') as HOUR, count(ANIMAL_ID) as COUNT
            from ANIMAL_OUTS 
            group by to_char(DATETIME, 'HH24')) o
on l.HOUR=o.HOUR
order by l.HOUR;