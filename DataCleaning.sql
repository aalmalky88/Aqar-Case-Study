Select * 
From dbo.Data


--Rename a Colunm

sp_rename 'Data.RealEstatePrice_SUM', 'Price'



--Replacing Blanks or Nulls with the Value ��� ����

UPDATE dbo.Data
SET region_ar = COALESCE(region_ar, '��� ����')
WHERE region_ar IS NULL;


UPDATE dbo.Data
SET city_ar = COALESCE(city_ar, '��� ����')
WHERE city_ar IS NULL;


UPDATE dbo.Data
SET district_ar = COALESCE(district_ar, '��� ����')
WHERE district_ar IS NULL;


Select * 
From dbo.Data