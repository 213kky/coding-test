SELECT II.ITEM_ID, II.ITEM_NAME, II.RARITY
FROM ITEM_INFO II 
LEFT JOIN ITEM_TREE IT
ON IT.PARENT_ITEM_ID = II.ITEM_ID
WHERE IT.ITEM_ID IS NULL
ORDER BY II.ITEM_ID DESC