-- ДЗ:
-- 7) Создать представление, которое содержит всех мужчин

create view v_quantity as
select
  *
from students
where gender like 'M';

-- 8) Создать представление, которое содержит всех женщин
create view v_quantity as
select
  *
from students
where gender like 'F';

-- 9) Найти набор уникальных оценок

 select distinct
	avg_mark
  from students;


-- 10) Увеличить всем учащимся оценку в 10 раз

alter table students
modify column avg_mark numeric (6,2);

update students
set avg_mark = avg_mark *10;


-- 11) Поменяйте у Олега Петрова фамилию на Сидоров

update students
set last_name ='Сидоров'
where id  = 1;


-- 12) Для всех учеников, у которых оценка не больше 31 увеличить на 10

update students
set avg_mark = avg_mark + 10 
where avg_mark <= 31;


