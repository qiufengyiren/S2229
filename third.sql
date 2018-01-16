USE myschool;
INSERT SUBJECT (subjectName,classHour,glassId)
VALUES('Logic Java',220,1),('HTML',160,1),('Java OOP',230,2)
DELETE  FROM `subject` WHERE `subjectNo`=6
SELECT * FROM SUBJECT
#上机四
SELECT *FROM student 
UPDATE student SET email='stu2000@163.com',loginPwd='000' WHERE studentNo=20000
SELECT * FROM student
UPDATE SUBJECT SET classHour=classHour-10  WHERE subjectNo=1 AND classHour>200
CREATE TABLE `student_grade1`(SELECT `studentName`,`phone`,`sex`,`bronDate` FROM student WHERE gradeId=1 )
SELECT * FROM student_grade1
# 上机五
SELECT * FROM  result
INSERT result (studentNo,subjectNo,examDate,studentResult)
VALUES(10000,1,'2016-02-15',71),(10001,1,'2016-02-17',46),
(10002,1,'2016-02-17',83),(10003,1,'2016-02-17',65),
(10004,1,'2016-02-17',70),(10005,1,'2016-02-17',95),
(10006,1,'2016-02-17',93),(10007,1,'2016-02-17',23),
(20000,3,'2016-07-09',68),(20010,3,'2016-07-09',90)

# 1
SELECT  `student`.`studentName`,`result`.`studentResult` FROM `student`,`result` WHERE`student`.`studentNo`=`result`.`studentNo` ORDER BY(`studentResult`) DESC LIMIT 0,5
# 2
SELECT * FROM student 
SELECT YEAR(CURDATE())-YEAR(bronDate) FROM student
SELECT studentName,YEAR(CURDATE())-YEAR(bronDate),bronDate,phone FROM student WHERE sex='女' ORDER BY YEAR(CURDATE())-YEAR(bronDate) LIMIT 1,6

#3
SELECT * FROM student 
SELECT COUNT(*) AS 人数,bronDate AS 出生日期 FROM student GROUP BY YEAR(bronDate) HAVING COUNT(*)>2
#4
SELECT MAX(`result`.`studentResult`) AS '最高分',MIN(`result`.`studentResult`) AS '最低分',AVG(`result`.`studentResult`)AS'平均分' FROM `student`,`result`
WHERE `student`.`studentNo`=result.`studentNo` AND result.`examDate`='2016-02-17'

# 上机六
SELECT * FROM `subject`
   SELECT MAX(examDate) FROM result WHERE subjectNo=( SELECT `subjectNo` FROM `subject` WHERE subjectName='Logic Java')
   SELECT * FROM result
   SELECT MAX(studentResult),MIN(studentResult) FROM result WHERE  `subjectNo`=( SELECT `subjectNo` FROM `subject` WHERE subjectName='Logic Java')
   
 # 上机七
 INSERT gread(gradeName)VALUES('S1'),('S2'),('Y2')
       SELECT `subjectName` FROM `subject` WHERE glassId IN ( SELECT `greadID` FROM  gread WHERE gradeName='S1')
 
 #上机八
 SELECT * FROM `result`
SELECT `subjectNo` FROM `subject` WHERE `subjectName`='HTML'
 SELECT * FROM `student` WHERE `studentNo`NOT IN (SELECT  `studentNo` FROM `result` WHERE `subjectNo`=(SELECT `subjectNo` FROM `subject` WHERE `subjectName`='HTML'))
 
 #简答`library`
 