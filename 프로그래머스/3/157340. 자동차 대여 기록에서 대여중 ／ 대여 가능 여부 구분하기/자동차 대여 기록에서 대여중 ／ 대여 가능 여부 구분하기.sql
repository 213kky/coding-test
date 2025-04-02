SELECT H.CAR_ID, 
    CASE
    WHEN
        MAX(CASE 
                WHEN DATE_FORMAT(H.START_DATE, '%Y-%m-%d') <= '2022-10-16' 
                AND DATE_FORMAT(H.END_DATE, '%Y-%m-%d') >= '2022-10-16'
                THEN 1
                ELSE 0
            END) = 1
    THEN '대여중'
    ELSE '대여 가능'
    END AS AVAILABILITY 
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY H
GROUP BY H.CAR_ID 
ORDER BY H.CAR_ID DESC