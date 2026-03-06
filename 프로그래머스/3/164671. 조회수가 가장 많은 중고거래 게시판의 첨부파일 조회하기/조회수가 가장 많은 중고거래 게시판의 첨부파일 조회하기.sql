-- 코드를 입력하세요
-- USED_GOODS_BOARD VIEWS max로 추출
SELECT '/home/grep/src/' ||  f.BOARD_ID || '/' || FILE_ID || FILE_NAME ||FILE_EXT as FILE_PATH
from USED_GOODS_FILE f
join USED_GOODS_BOARD b on f.BOARD_ID=b.BOARD_ID and b.views=(select max(views)
from USED_GOODS_BOARD)
order by FILE_ID desc

