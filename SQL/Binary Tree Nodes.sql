https://www.hackerrank.com/challenges/binary-search-tree-1/problem?h_r%5B%5D=next-challenge&h_r%5B%5D=next-challenge&h_r%5B%5D=next-challenge&h_v%5B%5D=zen&h_v%5B%5D=zen&h_v%5B%5D=zen&isFullScreen=true
SELECT n,
CASE WHEN p IS NULL THEN 'Root' 
     WHEN n IN (SELECT P FROM BST) THEN 'Inner'
     ELSE 'Leaf'
END
FROM BST
ORDER BY n;

-- Time efficient method
--SELECT N, IF(P IS NULL,'Root',IF((SELECT COUNT(*) FROM BST WHERE P=B.N)>0,'Inner','Leaf')) FROM BST AS B ORDER BY N;
