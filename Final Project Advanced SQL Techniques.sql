-- Exercise 1: Using Joins
-- Q1
SELECT NAME_OF_SCHOOL, ChicagoPublicSchools.COMMUNITY_AREA_NAME
FROM ChicagoPublicSchools
LEFT JOIN ChicagoCensusData
ON ChicagoPublicSchools.COMMUNITY_AREA_NAME=ChicagoCensusData.COMMUNITY_AREA_NAME
WHERE HARDSHIP_INDEX=98
--Q2
Select CASE_NUMBER, PRIMARY_TYPE,COMMUNITY_AREA_NAME
From ChicagoCrimeData as Cr
left join ChicagoCensusData as Ce
on Ce.COMMUNITY_AREA_NUMBER=Cr.COMMUNITY_AREA_NUMBER
where Cr.LOCATION_DESCRIPTION Like 'SCHOOL%'