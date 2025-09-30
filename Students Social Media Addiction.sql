CREATE DATABASE mental_health;
USE mental_health;

CREATE TABLE student_mental (
		Student_ID INT PRIMARY KEY,
        Age INT,
        Gender VARCHAR(20),
        Academic_Level VARCHAR(30),
        Country VARCHAR(30),
        Avg_Daily_Usage_Hours INT,
        Most_Used_Platform VARCHAR(30),
        Affects_Academic_Performance VARCHAR(10),
        Sleep_Hours_Per_Night INT,
        Mental_Health_Score INT,
        Relationship_Status VARCHAR(30),
        Conflicts_Over_Social_Media INT,
        Addicted_Score INT
        );
        
        
SELECT *
FROM student_mental;

CREATE TABLE `student_mental2` (
  `Student_ID` int NOT NULL,
  `Age` int DEFAULT NULL,
  `Gender` varchar(20) DEFAULT NULL,
  `Academic_Level` varchar(30) DEFAULT NULL,
  `Country` varchar(30) DEFAULT NULL,
  `Avg_Daily_Usage_Hours` int DEFAULT NULL,
  `Most_Used_Platform` varchar(30) DEFAULT NULL,
  `Affects_Academic_Performance` varchar(10) DEFAULT NULL,
  `Sleep_Hours_Per_Night` int DEFAULT NULL,
  `Mental_Health_Score` int DEFAULT NULL,
  `Relationship_Status` varchar(30) DEFAULT NULL,
  `Conflicts_Over_Social_Media` int DEFAULT NULL,
  `Addicted_Score` int DEFAULT NULL,
  PRIMARY KEY (`Student_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

SELECT *
FROM student_mental2;

INSERT student_mental2
SELECT *
FROM student_mental;

SELECT *
FROM student_mental2;

-- DEMOGRAPHIC PROFILE
SELECT Age, Gender, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Age, Gender
ORDER BY Age;

SELECT *
FROM student_mental2;

-- WHICH ACADEMIC LEVEL WAS ACADEMIC PERFORMANCE AFFECTED DUE TO SOCIAL MEDIA USE? AND HOW MANY WAS AFFECTED? BAR/COLUMN CHART
SELECT Academic_Level, Affects_Academic_Performance, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Academic_Level, Affects_Academic_Performance
ORDER BY Academic_Level;

-- WHICH SOCIAL MEDIA PLATFORM WAS MOSTLY USED BY RESPONDENTS WHOSE ACADEMIC PERFORMANCE WAS AFFECTED AND HOW LONG? BAR/COLUMN CHART
SELECT Avg_Daily_Usage_Hours, Most_Used_Platform, Affects_Academic_Performance, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Avg_Daily_Usage_HourS, Most_Used_Platform, Affects_Academic_Performance
ORDER BY Avg_Daily_Usage_Hours;

SELECT Most_Used_Platform, Affects_Academic_Performance, COUNT(*) AS total_respo
FROM student_mental2
WHERE Affects_Academic_Performance = 'Yes'
GROUP BY Most_Used_Platform, Affects_Academic_Performance;

SELECT *
FROM student_mental2;

-- WHAT IS THE AVERAGE SLEEP HOURS PER NIGHT AMONG THE RESPONDENTS? BAR/COLUMN CHART
SELECT Sleep_Hours_Per_Night, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Sleep_Hours_Per_Night
ORDER BY Sleep_Hours_Per_Night;

-- WHAT IS THE AVERAGE DAILY USAGE HOURS AMONG THE RESPONDENTS? CARD BOX
SELECT AVG(Avg_Daily_Usage_Hours) as average_social_media_use, COUNT(*) AS total_respo
FROM student_mental2;



-- HOW MANY RESPONDENTS ARE THERE IN THE DATASET? CARD BOX
SELECT COUNT(*)
FROM student_mental2;


-- WHAT IS THE AVERAGE DAILY USAGE HOURS AMONG THE RESPONDENTS? PIE CHART
SELECT Avg_Daily_Usage_Hours, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Avg_Daily_Usage_Hours
ORDER BY Avg_Daily_Usage_Hours;

-- WHAT IS THE TREND OF MENTAL HEALTH AMONG THE RESPONDENTS? LINE CHART
SELECT Mental_Health_Score, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Mental_Health_Score
ORDER BY Mental_Health_Score;

-- COMPARE CONFLICTS OVER SOCIAL MEDIA AND ADDICTION SCORE. USE BAR/COLUMN CHART
SELECT Conflicts_Over_Social_Media, Addicted_Score, COUNT(*) AS total_respo
FROM student_mental2
GROUP BY Conflicts_Over_Social_Media, Addicted_Score
ORDER BY Conflicts_Over_Social_Media, Addicted_Score;

SELECT *
FROM student_mental2;








