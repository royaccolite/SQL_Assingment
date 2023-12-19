create database Student;
use Student;
create table StudentBasicInformation(
StudentName varchar(20),
StudentSurname varchar(20),
StudentRollNo decimal(10,0),
StudentAddress varchar(50),
StudentClass int,
StudentGrade int,
StudentSection varchar(1)
);
create table StudentAdmissionPaymentDetails(
StudentRollNo decimal(10,0),
AmountPaid int,
AmountBalance int,
AmountId decimal(6,0),
AmountDate date,
AmountMethod varchar(10),  -- debitcard or cash 
AmountPaidBy varchar(10) -- father or mother
);
create table StudentSubjectInformation(
SubjectOpted varchar(20),
StudentRollNo decimal(10,0),
SubjectTotalMarks int,
SubjectObtainedMarks int,
StudentMarksPercentage int
);
create table  SubjectScholarshipInformation(
StudentRollNo decimal(10,0),
ScholarshipName varchar(50),
ScholarshipDescription varchar(200),
ScholarshipAmount int,
ScholarshipCategory varchar(20),
ScholarshipYear year,
ScholarshipGovernment varchar(20)
);

INSERT INTO StudentBasicInformation (StudentName, StudentSurname, StudentRollNo, StudentAddress, StudentClass, StudentGrade, StudentSection)
VALUES
('Emma', 'Smith', 1234567890, '123 Main St, Cityville', 10, 85, 'A'),
('Ethan', 'Johnson', 9876543210, '456 Oak St, Townburg', 8, 92, 'B'),
('Olivia', 'Brown', 4567890123, '789 Pine St, Villagetown', 11, 78, 'C'),
('Liam', 'Davis', 3456789012, '321 Elm St, Hamletville', 9, 88, 'A'),
('Ava', 'Miller', 2109876543, '654 Maple St, Burgville', 7, 95, 'B'),
('Noah', 'Wilson', 7890123456, '987 Birch St, Meadowtown', 12, 72, 'C'),
('Sophia', 'Moore', 5678901234, '234 Cedar St, Hillside', 8, 90, 'A'),
('Jackson', 'Taylor', 4321098765, '567 Pine St, Riverside', 10, 84, 'B'),
('Isabella', 'Anderson', 9012345678, '876 Oak St, Lakeside', 6, 93, 'C'),
('Aiden', 'Martinez', 3456789012, '432 Elm St, Mountainview', 9, 87, 'A'),
('Olivia', 'Harris', 7890123456, '654 Birch St, Valleytown', 11, 79, 'B'),
('Liam', 'Martin', 2345678901, '876 Cedar St, Streamside', 7, 94, 'C'),
('Emma', 'Thompson', 8901234567, '123 Maple St, Harborville', 12, 75, 'A'),
('Lucas', 'Turner', 5678901234, '987 Pine St, Cliffside', 8, 89, 'B'),
('Ava', 'White', 2109876543, '345 Oak St, Lakeshore', 10, 82, 'C');

INSERT INTO StudentAdmissionPaymentDetails (StudentRollNo, AmountPaid, AmountBalance, AmountId, AmountDate, AmountMethod, AmountPaidBy)
VALUES
(1234567890, 5000, 2000, 100001, '2023-01-15', 'debitcard', 'father'),
(9876543210, 3000, 1500, 100002, '2023-02-20', 'cash', 'mother'),
(4567890123, 6000, 3000, 100003, '2023-03-25', 'debitcard', 'father'),
(3456789012, 4500, 2000, 100004, '2023-04-10', 'cash', 'mother'),
(2109876543, 5500, 2500, 100005, '2023-05-15', 'debitcard', 'father'),
(7890123456, 3500, 1000, 100006, '2023-06-20', 'cash', 'mother'),
(5678901234, 4000, 1500, 100007, '2023-07-25', 'debitcard', 'father'),
(4321098765, 4800, 2200, 100008, '2023-08-10', 'cash', 'mother'),
(9012345678, 5200, 2800, 100009, '2023-09-15', 'debitcard', 'father'),
(3456789012, 3000, 1200, 100010, '2023-10-20', 'cash', 'mother'),
(7890123456, 4200, 1800, 100011, '2023-11-25', 'debitcard', 'father'),
(2345678901, 4800, 2000, 100012, '2023-12-10', 'cash', 'mother'),
(8901234567, 3800, 1500, 100013, '2024-01-15', 'debitcard', 'father'),
(5678901234, 4500, 2000, 100014, '2024-02-20', 'cash', 'mother'),
(2109876543, 4000, 1800, 100015, '2024-03-25', 'debitcard', 'father');

INSERT INTO StudentSubjectInformation (SubjectOpted, StudentRollNo, SubjectTotalMarks, SubjectObtainedMarks, StudentMarksPercentage)
VALUES
('Mathematics', 1234567890, 100, 85, 85),
('Science', 9876543210, 100, 92, 92),
('English', 4567890123, 100, 78, 78),
('History', 3456789012, 100, 88, 88),
('Physics', 2109876543, 100, 95, 95),
('Chemistry', 7890123456, 100, 72, 72),
('Biology', 5678901234, 100, 90, 90),
('Geography', 4321098765, 100, 84, 84),
('Social Studies', 9012345678, 100, 93, 93),
('Computer Science', 3456789012, 100, 87, 87),
('Economics', 7890123456, 100, 79, 79),
('Art', 2345678901, 100, 94, 94),
('Physical Education', 8901234567, 100, 75, 75),
('Music', 5678901234, 100, 89, 89),
('Drama', 2109876543, 100, 82, 82);

INSERT INTO SubjectScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipCategory, ScholarshipYear, ScholarshipGovernment)
VALUES
(1234567890, 'Merit Scholarship', 'Awarded for outstanding academic performance', 5000, 'Merit', 2023, 'Central'),
(9876543210, 'Science Excellence Scholarship', 'Awarded for excellence in science subjects', 3000, 'Subject-based', 2022, 'State'),
(4567890123, 'Literature Achievement Grant', 'Awarded for excellence in literature studies', 4000, 'Subject-based', 2022, 'Central'),
(3456789012, 'Mathematics Scholarship', 'Awarded for excellence in mathematics', 3500, 'Subject-based', 2021, 'State'),
(2109876543, 'Innovation Scholarship', 'Awarded for innovative projects in computer science', 6000, 'Innovation', 2023, 'Central'),
(7890123456, 'Financial Need-Based Scholarship', 'Awarded to students with financial constraints', 4500, 'Need-based', 2023, 'State'),
(5678901234, 'Biology Research Grant', 'Awarded for outstanding research in biology', 5500, 'Research', 2022, 'Central'),
(4321098765, 'History and Culture Scholarship', 'Awarded for excellence in history and culture studies', 4800, 'Subject-based', 2023, 'State'),
(9012345678, 'Social Sciences Achievement Scholarship', 'Awarded for excellence in social sciences', 5200, 'Subject-based', 2022, 'Central'),
(3456789012, 'Computer Science Innovation Award', 'Awarded for innovative projects in computer science', 3000, 'Innovation', 2021, 'State'),
(7890123456, 'Economics Research Grant', 'Awarded for outstanding research in economics', 4200, 'Research', 2022, 'Central'),
(2345678901, 'Fine Arts Scholarship', 'Awarded for excellence in fine arts', 4800, 'Subject-based', 2023, 'State'),
(8901234567, 'Sports Achievement Scholarship', 'Awarded for excellence in sports', 3800, 'Sports', 2023, 'Central'),
(5678901234, 'Music Excellence Scholarship', 'Awarded for excellence in music', 4500, 'Subject-based', 2022, 'State'),
(2109876543, 'Drama and Performing Arts Grant', 'Awarded for excellence in drama and performing arts', 4000, 'Subject-based', 2023, 'Central');

select * from StudentBasicInformation;
select * from StudentAdmissionPaymentDetails;
select * from StudentSubjectInformation;
select * from SubjectScholarshipInformation;

-- 5
alter table SubjectScholarshipInformation
add ScholarshipApplied bool;


alter table SubjectScholarshipInformation
add ScholarshipApplicationSuucessful bool;

INSERT INTO SubjectScholarshipInformation (StudentRollNo, ScholarshipName, ScholarshipDescription, ScholarshipAmount, ScholarshipCategory, ScholarshipYear, ScholarshipGovernment,ScholarshipApplied,ScholarshipApplicationSuucessful)
VALUES
(1234567890, 'Merit Scholarship', 'Awarded for outstanding academic performance', 5000, 'Merit', 2023, 'Central',false,false),
(9876543210, 'Science Excellence Scholarship', 'Awarded for excellence in science subjects', 3000, 'Subject-based', 2022, 'State',false,false),
(4567890123, 'Literature Achievement Grant', 'Awarded for excellence in literature studies', 4000, 'Subject-based', 2022, 'Central',true,false),
(3456789012, 'Mathematics Scholarship', 'Awarded for excellence in mathematics', 3500, 'Subject-based', 2021, 'State',true,false),
(2109876543, 'Innovation Scholarship', 'Awarded for innovative projects in computer science', 6000, 'Innovation', 2023, 'Central',true,true),
(7890123456, 'Financial Need-Based Scholarship', 'Awarded to students with financial constraints', 4500, 'Need-based', 2023, 'State',true,false),
(5678901234, 'Biology Research Grant', 'Awarded for outstanding research in biology', 5500, 'Research', 2022, 'Central',false,false),
(4321098765, 'History and Culture Scholarship', 'Awarded for excellence in history and culture studies', 4800, 'Subject-based', 2023, 'State',true,false),
(9012345678, 'Social Sciences Achievement Scholarship', 'Awarded for excellence in social sciences', 5200, 'Subject-based', 2022, 'Central',false,false),
(3456789012, 'Computer Science Innovation Award', 'Awarded for innovative projects in computer science', 3000, 'Innovation', 2021, 'State',true,true),
(7890123456, 'Economics Research Grant', 'Awarded for outstanding research in economics', 4200, 'Research', 2022, 'Central',true,true),
(2345678901, 'Fine Arts Scholarship', 'Awarded for excellence in fine arts', 4800, 'Subject-based', 2023, 'State',true,false),
(8901234567, 'Sports Achievement Scholarship', 'Awarded for excellence in sports', 3800, 'Sports', 2023, 'Central',true,false),
(5678901234, 'Music Excellence Scholarship', 'Awarded for excellence in music', 4500, 'Subject-based', 2022, 'State',false,false),
(2109876543, 'Drama and Performing Arts Grant', 'Awarded for excellence in drama and performing arts', 4000, 'Subject-based', 2023, 'Central',true,false);

-- 6

select * from StudentBasicInformation;
select * from StudentAdmissionPaymentDetails;
select * from StudentSubjectInformation;
select * from SubjectScholarshipInformation;


-- 7
select t1.StudentName ,
t1.StudentSurname, 
t1.StudentRollNo, 
t1.StudentAddress ,
t1.StudentClass,
t1.StudentGrade,
t1.StudentSection,
t4.ScholarshipAmount from StudentBasicInformation t1
join SubjectScholarshipInformation t4 where 
t1.StudentRollNo=t4.StudentRollNo and t4.ScholarshipAmount >5000;

-- 8

select t1.StudentName ,
t1.StudentSurname, 
t1.StudentRollNo, 
t1.StudentAddress ,
t1.StudentClass,
t1.StudentGrade,
t1.StudentSection,
t4.ScholarshipApplied,
t4.ScholarshipApplicationSuucessful from StudentBasicInformation t1
inner join SubjectScholarshipInformation t4
where t1.StudentRollNo=t4.StudentRollNo and 
t4.ScholarshipApplied=1 and t4.ScholarshipApplicationSuucessful=0;

-- 9
alter table StudentSubjectInformation drop StudentMarksPercentage;

alter table StudentSubjectInformation add StudentMarksPercentage int;

SET SQL_SAFE_UPDATES = 0;
update StudentSubjectInformation set StudentMarksPercentage=0 ;
select * from StudentSubjectInformation;

delimiter $$
create procedure Percentage()
begin
	update StudentSubjectInformation
    set StudentMarksPercentage = (SubjectObtainedMarks);
end $
delimiter ;
call Percentage();


select * from StudentSubjectInformation;

-- 10

select * from SubjectScholarshipInformation;

alter table SubjectScholarshipInformation
modify ScholarshipCategory varchar(100);

delimiter $$
create procedure UpdateScholarshipCategory(IN percent int, OUT out_ScholarshipCategoty varchar(100))
begin
	DECLARE ScholarshipCategory varchar(100);
	if percent >=90 then set ScholarshipCategory="Extraordinary Badge";
    elseif percent >=80 then set ScholarshipCategory="Great Badge";
    else set ScholarshipCategory="No Badge";
    end if;
    set out_ScholarshipCategoty=ScholarshipCategory;
end $
delimiter ;
-- select routine_name, routine_type,definer,created,security_type,SQL_Data_Access 
-- from information_schema.routines where routine_type='PROCEDURE' and routine_schema='student';
-- drop procedure NewScholarshipCategory2;

-- drop procedure NewScholarshipCategory;

-- 11
create view StudentAmountView as
select t1.StudentName,t1.StudentSurname,t1.StudentRollNo,t1.StudentAddress,t2.AmountPaid
from  StudentBasicInformation t1  join StudentAdmissionPaymentDetails t2
on t1.StudentRollNo=t2.StudentRollNo;

select * from StudentAmountView;

-- 12

select t1.StudentName ,
t1.StudentSurname, 
t1.StudentRollNo, 
t1.StudentAddress ,
t1.StudentClass,
t1.StudentGrade,
t1.StudentSection,
t4.ScholarshipApplied,
t4.ScholarshipApplicationSuucessful from StudentBasicInformation t1
left join SubjectScholarshipInformation t4
on t1.StudentRollNo=t4.StudentRollNo and 
t4.ScholarshipApplied=1 and t4.ScholarshipApplicationSuucessful=0;


-- 13

delimiter //
CREATE PROCEDURE GetAmountBalance(IN StudentRollNo DECIMAL(10, 0))
BEGIN
	DECLARE Balance int;

	-- Retrieve the amount balance based on the student roll number
	SELECT @Balance = AmountBalance
	FROM StudentAdmissionPaymentDetails
	WHERE StudentRollNo = @StudentRollNo;

	-- Return the amount balance
	SELECT @Balance AS AmountBalance;
END;
delimiter ;

call GetAmountBalance ( 1234567890);

-- 14
SELECT
	t1.StudentName,
	t1.StudentSurname,
	t1.StudentRollNo,
	t1.StudentAddress,
	t1.StudentClass,
	t1.StudentGrade,
	t1.StudentSection,
	t3.StudentMarksPercentage
FROM
	StudentBasicInformation t1
JOIN
	StudentSubjectInformation t3 ON t1.StudentRollNo = t3.StudentRollNo
WHERE
	t3.StudentMarksPercentage IS NOT NULL
ORDER BY
	t3.StudentMarksPercentage DESC
LIMIT 5;

-- 16

-- INNER JOIN: Retrieve students with both admission payment details and subject information
SELECT
	t1.StudentName,
	t1.StudentSurname,
	t1.StudentRollNo,
	t2.AmountPaid,
	t2.AmountBalance,
	t3.SubjectOpted,
	t3.SubjectTotalMarks,
	t3.SubjectObtainedMarks,
	t3.StudentMarksPercentage
FROM
	StudentBasicInformation t1
INNER JOIN
	StudentAdmissionPaymentDetails t2 ON t1.StudentRollNo = t2.StudentRollNo
INNER JOIN
	StudentSubjectInformation t3 ON t1.StudentRollNo = t3.StudentRollNo;

-- LEFT JOIN: Retrieve all students with admission payment details, and include subject information if available
SELECT
	t1.StudentName,
	t1.StudentSurname,
	t1.StudentRollNo,
	t2.AmountPaid,
	t2.AmountBalance,
	t3.SubjectOpted,
	t3.SubjectTotalMarks,
	t3.SubjectObtainedMarks,
	t3.StudentMarksPercentage
FROM
	StudentBasicInformation t1
INNER JOIN
	StudentAdmissionPaymentDetails t2 ON t1.StudentRollNo = t2.StudentRollNo
LEFT JOIN
	StudentSubjectInformation t3 ON t1.StudentRollNo = t3.StudentRollNo;

-- RIGHT JOIN: Retrieve all students with subject information, and include admission payment details if available
SELECT
	t1.StudentName,
	t1.StudentSurname,
	t1.StudentRollNo,
	t2.AmountPaid,
	t2.AmountBalance,
	t3.SubjectOpted,
	t3.SubjectTotalMarks,
	t3.SubjectObtainedMarks,
	t3.StudentMarksPercentage
FROM
	StudentBasicInformation t1
RIGHT JOIN
	StudentSubjectInformation t3 ON t1.StudentRollNo = t3.StudentRollNo
LEFT JOIN
	StudentAdmissionPaymentDetails t2 ON t1.StudentRollNo = t2.StudentRollNo;

-- 17
SELECT
	ScholarshipCategory,
	COUNT(StudentRollNo) AS NumberOfStudents
FROM
	SubjectScholarshipInformation
GROUP BY
	ScholarshipCategory;

-- 18


SELECT
	ScholarshipCategory,
	COUNT(StudentRollNo) AS NumberOfStudents
FROM
	SubjectScholarshipInformation
GROUP BY
	ScholarshipCategory
ORDER BY
	NumberOfStudents DESC
LIMIT 1;

