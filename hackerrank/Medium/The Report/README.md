You are given two tables: Students and Grades. Students contains three columns ID, Name and Marks.

<center>

![image](https://s3.amazonaws.com/hr-challenge-images/12891/1443818166-a5c852caa0-1.png)

</center>

Grades contains the following data:

<center>

![image](https://s3.amazonaws.com/hr-challenge-images/12891/1443818137-69b76d805c-2.png)

</center>


Ketty gives Eve a task to generate a report containing three columns: Name, Grade and Mark. Ketty doesn't want the NAMES of those students who received a grade lower than 8. The report must be in descending order by grade -- i.e. higher grades are entered first. If there is more than one student with the same grade (8-10) assigned to them, order those particular students by their name alphabetically. Finally, if the grade is lower than 8, use "NULL" as their name and list them by their grades in descending order. If there is more than one student with the same grade (1-7) assigned to them, order those particular students by their marks in ascending order.

Write a query to help Eve.