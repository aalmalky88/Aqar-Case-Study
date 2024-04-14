Select * 
From dbo.Data


--Rename a Colunm

sp_rename 'Data.RealEstatePrice_SUM', 'Price'



--Replacing Blanks or Nulls with the Value €Ì— „’‰›

UPDATE dbo.Data
SET region_ar = COALESCE(region_ar, '€Ì— „’‰›')
WHERE region_ar IS NULL;


UPDATE dbo.Data
SET city_ar = COALESCE(city_ar, '€Ì— „’‰›')
WHERE city_ar IS NULL;


UPDATE dbo.Data
SET district_ar = COALESCE(district_ar, '€Ì— „’‰›')
WHERE district_ar IS NULL;


Select * 
From dbo.Data