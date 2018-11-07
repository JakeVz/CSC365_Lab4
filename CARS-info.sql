-- Abhinav Singh and Jake Veazey
-- asingh54@calpoly.edu and wveazey@calpoly.edu 

-- Reports the name and YearMade of each renault
SELECT c.Description, d.YearMade
FROM carNames c, carsData d
WHERE c.Model = 'renault' AND c.Id = d.Id 
ORDER BY d.YearMade
;

-- All volvo cars produced between 1977 and 1981, names reported along with the YearMade
SELECT c.Description, d.YearMade 
FROM carNames c, carsData d
WHERE c.Model = 'volvo' AND d.YearMade >= 1977 AND d.YearMade <= 1981 AND c.Id = d.Id
ORDER BY d.YearMade
;

-- All asian automakers with names and country of origin
SELECT m.FullName, c.Name
FROM carMakers m, countries c, continents cc
WHERE cc.Name = 'Asia' AND c.Continent = cc.Id AND c.Id = m.Country
ORDER BY m.FullName
;

-- All four cyclinder cars produced in 1980 with fuel economies of 20 MPG and that accelerate to 60MPH
-- in unrder 15 seconds 

SELECT c.Description, m.FullName
FROM carNames c, carMakers m, carsData d, modelList ml
WHERE d.Cylinders != 4 AND d.MPG > 20 AND d.Accelerate < 15 AND d.YearMade = 1980
      AND d.Id = c.Id AND c.Model = ml.Model AND ml.Maker = m.Id
ORDER BY d.Cylinders, d.YearMade, d.MPG, d.Accelerate
;

SELECT DISTINCT m.FullName, c.Name
FROM carsData cd, carNames cn, modelList ml, carMakers m, countries c, continents cc
WHERE c.Id = cn.Id AND cn.Model = ml.Model AND ml.Maker = m.Id AND m.Country = c.Id
      AND c.Continent = cc.Id AND cc.Name != 'europe' AND cd.YearMade >= 1979 AND cd.YearMade <= 1981
      AND cd.Weight < 2000
;

SELECT c.Description, d.YearMade, d.Weight / d.Horsepower AS Ratio
FROM carsData d, carNames c
WHERE c.Model = 'saab' AND d.YearMade > 1978 AND c.Id = d.Id 
ORDER BY Ratio DESC
;
