
SELECT *FROM MOVIE_SSIS.dbo.Fact_Movie

SELECT CONVERT(Float, vote_average)
From MOVIE_SSIS.dbo.Fact_Movie

ALTER TABLE MOVIE_SSIS.dbo.Fact_Movie
ALTER COLUMN vote_average Float

SELECT TRY_CONVERT(Float, vote_average)
From MOVIE_SSIS.dbo.Fact_Movie

SELECT *FROM
     (
      SELECT vote_average, TRY_CONVERT(Float, vote_average) AS Checkgiatridulieu
      From MOVIE_SSIS.dbo.Fact_Movie
     ) AS BangTam
WHERE Checkgiatridulieu IS 0

UPDATE MOVIE_SSIS.dbo.Fact_Movie
SET vote_average = '0' WHERE vote_average ='0'


----------------
SELECT *FROM MOVIE_SSIS.dbo.Fact_Movie

SELECT CONVERT(Float, revenue)
From MOVIE_SSIS.dbo.Fact_Movie

ALTER TABLE MOVIE_SSIS.dbo.Fact_Movie
ALTER COLUMN revenue Float

SELECT TRY_CONVERT(Float, revenue)
From MOVIE_SSIS.dbo.Fact_Movie

SELECT *FROM
     (
      SELECT revenue, TRY_CONVERT(Float, revenue) AS Checkgiatridulieu
      From MOVIE_SSIS.dbo.Fact_Movie
     ) AS BangTam
WHERE Checkgiatridulieu IS 0


UPDATE MOVIE_SSIS.dbo.Fact_Movie
SET revenue = '0' WHERE revenue ='0'

-------------
SELECT *FROM MOVIE_SSIS.dbo.Fact_Movie

SELECT CONVERT(Float, budget)
From MOVIE_SSIS.dbo.Fact_Movie

ALTER TABLE MOVIE_SSIS.dbo.Fact_Movie
ALTER COLUMN budget Float

SELECT TRY_CONVERT(Float, budget)
From MOVIE_SSIS.dbo.Fact_Movie

SELECT *FROM
     (
      SELECT revenue, TRY_CONVERT(Float, budget) AS Checkgiatridulieu
      From MOVIE_SSIS.dbo.Fact_Movie
     ) AS BangTam
WHERE Checkgiatridulieu IS 0


UPDATE MOVIE_SSIS.dbo.Fact_Movie
SET budget = '0' WHERE budget ='0'

---------
SELECT *FROM MOVIE_SSIS.dbo.Fact_Movie

SELECT CONVERT(Float, popularity)
From MOVIE_SSIS.dbo.Fact_Movie

ALTER TABLE MOVIE_SSIS.dbo.Fact_Movie
ALTER COLUMN popularity Float

SELECT TRY_CONVERT(Float, popularity)
From MOVIE_SSIS.dbo.Fact_Movie

SELECT *FROM
     (
      SELECT revenue, TRY_CONVERT(Float, popularity) AS Checkgiatridulieu
      From MOVIE_SSIS.dbo.Fact_Movie
     ) AS BangTam
WHERE Checkgiatridulieu IS 0


UPDATE MOVIE_SSIS.dbo.Fact_Movie
SET popularity = '0.25' WHERE popularity ='NULL'
-------


-------
SELECT *FROM MOVIE_SSIS.dbo.Fact_Movie

SELECT CONVERT(Float, runtime)
From MOVIE_SSIS.dbo.Fact_Movie

ALTER TABLE MOVIE_SSIS.dbo.Fact_Movie
ALTER COLUMN runtime Float

SELECT TRY_CONVERT(Float, runtime)
From MOVIE_SSIS.dbo.Fact_Movie

SELECT *FROM
     (
      SELECT revenue, TRY_CONVERT(Float, budget) AS Checkgiatridulieu
      From MOVIE_SSIS.dbo.Fact_Movie
     ) AS BangTam
WHERE Checkgiatridulieu IS 0


UPDATE MOVIE_SSIS.dbo.Fact_Movie
SET runtime = '0' WHERE runtime ='0'
