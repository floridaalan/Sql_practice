SAMPLE OUTPUT:

Ashely(P)
Christeen(P)
Jane(A)
Jenny(D)
Julia(A)
Ketty(P)
Maria(A)
Meera(S)
Priya(S)
Samantha(D)
There are a total of 2 doctors.
There are a total of 2 singers.
There are a total of 3 actors.
There are a total of 3 professors.




SOLUTION :
select
case
when Occupation='Doctor' then concat(Name,'(D)')
when Occupation='Professor' then concat(Name,'(P)')
when Occupation='Singer' then concat(Name,'(S)')
when Occupation='Actor' then concat(Name,'(A)')
end as result 
from OCCUPATIONS order by Name asc;


select concat('There are a total of ',count(*),' ',lower(Occupation),'s.') as result from Occupations group by Occupation order by count(*) asc , Occupation asc;

