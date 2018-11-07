-- Abhinav Singh and Jake Veazey
-- asingh54@calpoly.edu and wveazey@calpoly.edu 



-- This should output all students first and last names, sorted by last name for
-- anyone in classroom 111

SELECT FirstName, LastName
FROM list
WHERE Classroom = 111
ORDER BY LastName
;

-- Orders classroom and outputs the classroom number + grade

SELECT DISTINCT Classroom, Grade 
FROM list
ORDER BY Classroom DESC
;

-- Reports the first and last name along with the room number for all teachers who teach fifth grade
SELECT DISTINCT t.FirstName, t.LastName, t.Classroom
FROM teachers t, list s 
WHERE s.Grade = 5 AND s.Classroom = t.Classroom
ORDER BY t.Classroom
;

-- Finds all students who are taught by Otha Moyer and outputs those students 
SELECT s.FirstName, s.LastName
FROM teachers t, list s
WHERE t.FirstName = 'OTHA' AND t.LastName = 'MOYER' AND s.Classroom = t.Classroom
ORDER BY s.LastName
;
-- Gets all teachers who teacher K through 3rd grade 
SELECT DISTINCT t.FirstName, t.LastName, s.Grade
FROM teachers t, list s
WHERE s.Classroom = t.Classroom AND s.Grade >= 0 AND s.Grade <=3
ORDER BY t.LastName, s.Grade
