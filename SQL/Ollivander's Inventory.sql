-- https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?h_r=next-challenge&h_r=next-challenge&h_r=next-challenge&h_r=next-challenge&h_v=zen&h_v=zen&h_v=zen&h_v=zen&isFullScreen=true
SELECT w.id, wp.age, w.coins_needed, w.power FROM wands AS w
JOIN wands_property AS wp
ON wp.code = w.code
WHERE wp.is_evil = 0
AND w.coins_needed = (SELECT MIN(coins_needed) FROM wands as w1
                     JOIN wands_property AS wp1
                     ON wp1.code = w1.code
                     WHERE w.power = w1.power AND wp1.age = wp.age)
ORDER BY w.power DESC, wp.age DESC

