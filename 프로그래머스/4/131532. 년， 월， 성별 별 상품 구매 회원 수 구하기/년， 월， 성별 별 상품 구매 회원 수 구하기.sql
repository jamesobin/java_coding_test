-- 코드를 입력하세요
SELECT
    YEAR(SALE.SALES_DATE) AS `YEAR`	
    , MONTH(SALE.SALES_DATE) AS `MONTH`	
    , INFO.GENDER AS `GENDER`
    , COUNT(DISTINCT INFO.USER_ID) AS `USERS`
FROM `ONLINE_SALE` AS `SALE`
JOIN `USER_INFO` AS `INFO`
ON SALE.USER_ID = INFO.USER_ID
WHERE INFO.GENDER IS NOT NULL
GROUP BY `YEAR`, `MONTH`, `GENDER`
ORDER BY `YEAR`, `MONTH`, `GENDER`;