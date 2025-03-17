SELECT CONCAT('/home/grep/src/', B.BOARD_ID, '/', FILE_ID, FILE_NAME, FILE_EXT) AS FILE_PATH
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_FILE F
ON B.BOARD_ID = F.BOARD_ID
JOIN (SELECT MAX(VIEWS) AS MAX_VIEWS FROM USED_GOODS_BOARD) B2
ON B.VIEWS = B2.MAX_VIEWS
ORDER BY FILE_ID DESC