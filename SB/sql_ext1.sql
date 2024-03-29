-- Желательно реализовать на MS SQL. --
/*
1) Вам нужно создать оператор выбора, который выдаст первые 90 чисел Фибоначчи.
Имя столбца -number

Последовательность Фиббоначчи:
 0, 1, 1, 2, 3, 5, 8, 13, ..., 89, 144, 233, 377, ...
*/

SELECT concat('0, ', group_concat(f separator ', '), ', ...') as 'Последовательность Фиббоначчи:'
FROM (
  SELECT @f := @i + @j as f, @i := @j, @j := @f
  FROM information_schema.tables, (SELECT @i := 1, @j := 0) _ LIMIT 90
 ) _
