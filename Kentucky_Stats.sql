/*Top 5 dates with the most fatilties in Jefferson County from  1/23 - 5/3*/
SELECT TOP 10
	   [Id]
      ,[County]
      ,[Province_State]
      ,[Country_Region]
      ,[Population]
      ,[Weight]
      ,[Date]
      ,[Target]
      ,[TargetValue]
FROM 
	[Kaggle].[dbo].[train]
WHERE 
	[Province_State] = 'Kentucky'
	and [County] = 'Jefferson'
	and [Target] = 'Fatalities'
ORDER BY		
	[TargetValue] DESC

/*Id	County Province_State		Population	Weight				Date	Target	TargetValue
367244	Jefferson	Kentucky	US	766757	0.738011382460911	2020-04-13	Fatalities	16
367250	Jefferson	Kentucky	US	766757	0.738011382460911	2020-04-16	Fatalities	10
367258	Jefferson	Kentucky	US	766757	0.738011382460911	2020-04-20	Fatalities	7
367228	Jefferson	Kentucky	US	766757	0.738011382460911	2020-04-05	Fatalities	6
367262	Jefferson	Kentucky	US	766757	0.738011382460911	2020-04-22	Fatalities	6*/




/*Total Fatatlies in Kentucky from 1/23 - 5/3*/

SELECT
      SUM([TargetValue]) AS  Total_Fatalities
FROM
	[Kaggle].[dbo].[train]
WHERE
	[Province_State] = 'Kentucky'
	and [Target] = 'Fatalities'
	and [COunty] != 'NULL'

ORDER BY
	Total_Fatalities DESC
/*Total_Fatalties 253*/



/*Total Fatatlies in Jefferson County from 1/23 - 5/3*/
  SELECT 
		Sum([TargetValue]) AS Total_Fatalties
  FROM 
		[Kaggle].[dbo].[train]
  WHERE 
		[Province_State] = 'Kentucky'
		and [County] = 'Jefferson'
		and [Target] = 'Fatalities'
  ORDER BY
		Total_Fatalties
/*Total_Fatalties 95*/



/*TOP 10 Counties in Kentucky with the highest deaths*/
SELECT
       [County]
      ,SUM([TargetValue]) AS  Total_Fatalities
FROM
	[Kaggle].[dbo].[train]
WHERE
	[Province_State] = 'Kentucky'
	and [Target] = 'Fatalities'
GROUP BY
	[County]
ORDER BY
	Total_Fatalities DESC
/*
County	Total_Fatalities
NULL		253
Jefferson	95
Hopkins		22
Kenton		20
Graves		14
Adair		13
Campbell	9
Fayette		9*/



