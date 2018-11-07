-- Abhinav Singh and Jake Veazey
-- asingh54@calpoly.edu and wveazey@calpoly.edu 

-- BAK1
SELECT
      Flavor,
      Food,
      Price
   FROM
      goods
   WHERE
      Flavor="Chocolate"
      AND Price < 5.00
   ORDER BY
      Price
;
-- BAK2
SELECT 
      Flavor, 
      Food, 
      Price 
   FROM 
      goods 
   WHERE (Food="Cookie" 
         AND Price > 1.10)
      OR (Flavor="Lemon") 
      OR (Flavor="Apple" 
         AND Food != "Pie") 
   ORDER BY 
      Flavor, 
      Food
;
-- BAK3
SELECT DISTINCT 
      c.FirstName, 
      c.LastName 
   FROM 
      customers c, 
      receipts r 
   WHERE 
      r.saleDate="2007-10-03" 
      AND r.Customer=C.Id 
   ORDER BY 
      c.LastName,
;
-- BAK4
SELECT DISTINCT 
      g.Flavor,
      g.Food 
   FROM 
      goods g,
      items i,
      receipts r 
   WHERE 
      r.SaleDate="2007-10-04" 
      AND r.RNumber=i.Receipt 
      AND i.Item=g.GId 
      AND g.Food="Cake" 
   ORDER BY 
      g.Flavor
;
-- BAK5
SELECT  
      g.Flavor, 
      g.Food, 
      g.Price 
   FROM 
      customers c,
      goods g,
      items i,
      receipts r 
   WHERE 
      c.FirstName="ARIANE" 
      AND c.LastName="CRUZEN" 
      AND r.Customer=c.CId 
      AND r.SaleDate="2007-10-25" 
      AND r.RNumber=i.Receipt 
      AND i.Item=g.GId 
   ORDER BY 
      i.Ordinal
;
-- BAK6
SELECT DISTINCT
      g.Flavor, 
      g.Food 
   FROM 
      customers c,
      goods g,
      items i,
      receipts r 
   WHERE 
      c.FirstName="KIP" 
      AND c.LastName="ARNN" 
      AND c.CId=r.Customer 
      AND r.SaleDate >="2007-10-01" 
      AND r.SaleDate <= "2007-10-31" 
      AND r.RNumber=i.Receipt 
      AND i.Item=g.GId 
   ORDER BY 
      g.Flavor
;
