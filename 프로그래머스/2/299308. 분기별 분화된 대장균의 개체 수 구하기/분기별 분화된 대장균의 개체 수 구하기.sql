SELECT
    CONCAT(
        CASE
            WHEN (MONTH(ECOLI_DATA.DIFFERENTIATION_DATE) / 3) <= 1
            THEN 1
            WHEN (MONTH(ECOLI_DATA.DIFFERENTIATION_DATE) / 3) <= 2
            THEN 2
            WHEN (MONTH(ECOLI_DATA.DIFFERENTIATION_DATE) / 3) <= 3
            THEN 3
            ELSE 4
        END
          , 'Q') AS QUARTER, COUNT(ECOLI_DATA.ID) AS ECOLI_COUNT
FROM ECOLI_DATA 
GROUP BY QUARTER
ORDER BY QUARTER ASC