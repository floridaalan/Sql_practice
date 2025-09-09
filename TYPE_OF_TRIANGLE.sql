SELECT 
  CASE 
    WHEN (a = b AND b = c) THEN 'Equilateral'
    WHEN (a = b OR b = c OR c = a) 
         AND (a + b > c AND b + c > a AND a + c > b) 
    THEN 'Isosceles'
    WHEN (a <> b AND b <> c AND c <> a) 
         AND (a + b > c AND b + c > a AND a + c > b) 
    THEN 'Scalene'
    ELSE 'Not A Triangle'
  END AS TriangleType
FROM TRIANGLES;
