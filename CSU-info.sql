-- Abhinav Singh and Jake Veazey
-- asingh54@calpoly.edu and wveazey@calpoly.edu 

-- CSU 1
SELECT
      Campus
   FROM 
      campuses
   WHERE
      County="Los Angeles"
   ORDER BY 
      Campus
;
-- CSU 2
SELECT 
      d.YR,
      d.Degrees 
   FROM 
      campuses c, 
      degrees d
   WHERE 
      c.campus = "California Maritime Academy"
      AND c.Id = d.Campusid
      AND d.YR >= 1994 
      AND d.YR <= 2000
   ORDER BY
      d.YR
;
-- CSU 3
SELECT 
      c.Campus, 
      d.Name, 
      de.UGrad, 
      de.Grad
   FROM
      discEnr de,
      disciplines d,
      campuses c
   WHERE 
      (disc.Name = "Mathematics" 
         OR d.Name = "Engineering" 
         OR d.Name = "Computer and Info. Sciences")
      AND (c.Campus = "California State Polytechnic University-Pomona"
         OR c.Campus = "California Polytechnic State University-San Luis Obispo")
      AND d.Id = de.DiscId AND c.Id = de.CampusId
      AND de.YR = 2004
   ORDER BY
      c.Campus,
      d.Name
      
;
-- CSU 4
SELECT 
   c.Campus, 
   deAg.Grad,
   deBio.Grad
   FROM 
      disciplines dAg,
      disciplines dBio,
      discEnr deAg,
      discEnr deBio,
      campuses c
   WHERE 
      dAg.Name = "Agriculture" AND dBio.Name = "Biological Sciences"
      AND dAg.Id = deAg.DiscId
      AND dBio.id = deBio.DiscId
      AND c.Id = deAg.CampusId
      AND c.Id = deBio.CampusId
   ORDER BY
      deAg.Grad DESC
;
-- CSU 5
SELECT 
      c.Campus,
      d.Name,
      de.Grad,
      de.UGrad
   FROM
      discEnr de,
      disciplines d,
      campuses c
   WHERE 
      d.Id = de.DiscId
      AND c.Id = de.CampusId
      AND de.Grad >= 3*de.UGrad
      AND de.YR = 2004

   ORDER BY
      c.Campus,
      d.name
;
-- CSU 6
SELECT 
      enroll.YR, 
      enroll.Enrolled * enroll.FTE,
      enroll.Enrolled * enroll.FTE / fac.FTE
   FROM
      enrollments enroll, 
      faculty fac,
      campuses c
   WHERE 
      c.Campus = "Fresno State University"
      AND enroll.YR >= 2002 AND enroll.YR <= 2004
      AND enroll.CampusId = c.Id
      AND fac.CampusId = c.Id
      AND fac.YR = enroll.YR
   ORDER BY
      enroll.YR
;
-- CSU 7
SELECT 
      camps.Campus,
      enrollAll.FTE,
      fac.FTE,
      enrollAll.FTE / fac.FTE
   FROM
      campuses cSJ,
      campuses camps,
      enrollments enrollSJ,
      enrollments enrollAll,
      faculty fac
   WHERE 
      cSJ.Campus = "San Jose State University"
      AND camps.Id = enrollAll.CampusId AND cSJ.Id = enrollSJ.CampusId
      AND camps.Id = fac.CampusId
      AND enrollAll.YR = 2003 AND enrollSJ.YR = 2003
      AND enrollAll.YR = fac.YR
      AND enrollAll.FTE > enrollSJ.FTE
   ORDER BY
      Ratio
;
