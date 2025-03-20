SELECT B.WRITER_ID, U.NICKNAME, SUM(B.PRICE)
FROM USED_GOODS_BOARD B
JOIN USED_GOODS_USER U
ON B.WRITER_ID = U.USER_ID
WHERE B.STATUS = 'DONE'
GROUP BY B.WRITER_ID
HAVING SUM(B.PRICE) >= 700000
ORDER BY SUM(B.PRICE) ASC
