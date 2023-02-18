# Employee-Database-with-SQL
# Purpose of This Project
The purpose of this project is to assist "Pewlett Hackard", a large company that is facing a significant wave of retirements among its baby boomer workforce. The goal is to prepare for the upcoming vacancies by creating a list of all employees eligible for retirement and determining the number of positions that need to be filled. To achieve this objective, an employee database needs to be built using SQL, leveraging data modeling, engineering, and analysis skills. The project aims to identify who will be retiring in the next few years and the number of positions that the company needs to fill to manage the impending talent gap.

# Build the Relationship between the Datasets
![ERD](https://user-images.githubusercontent.com/111480084/219902869-4a18cc06-273e-48b6-b4b9-5a035c72695d.png)

# The Number of Retiring Employees by Title
First, I retrieved the emp_no, first_name, and last_name columns from the Employees table and the title, from_date, and to_date columns from the Titles table.

Next, I created a new table using the INTO clause and joined both tables on the primary key.

Then, I filtered the data on the birth_date column to retrieve the employees who were born between 1952 and 1955 and ordered by the employee number.

Because some employees may have multiple titles in the database, I used the DISTINCT ON statement to create a table that contains the most recent title of each employee.

Finally, I used the COUNT() function to create a table that has the number of retirement-age employees by most recent job title. To ensure that we include only current employees in our analysis, I excluded those employees who have already left the company.

<img width="780" alt="data-Module-7-Challenge-Image-1" src="https://user-images.githubusercontent.com/111480084/219903022-a6db6774-0bb2-41ad-8d46-ea38e96e3cd7.png">

# The Employees Eligible for the Mentorship Program
I retrieved the emp_no, first_name, last_name, and birth_date columns from the Employees table. I also retrieved the from_date and to_date columns from the Department Employee table, and the title column from the Titles table.



Using a DISTINCT ON statement, I retrieved the first occurrence of the employee number for each set of rows defined by the ON () clause. Then, I created a new table using the INTO clause.

I joined the Employees and the Department Employee tables on the primary key, and also joined the Employees and the Titles tables on the primary key. I filtered the data on the to_date column to only include the current employees. Then, I further filtered the data on the birth_date columns to only include the employees whose birth dates were between January 1, 1965, and December 31, 1965.

# Employee list who are eligible for mentorship
<img width="748" alt="data-Module-7-Challenge-Image-4" src="https://user-images.githubusercontent.com/111480084/219903109-3e5339ba-e3c8-42ea-b77f-e89ef88fc63a.png">

# Conclusion:
Based on My analysis of Pewlett Hackard's employee data, we have determined that there will be a significant number of roles that need to be filled due to the upcoming "silver tsunami" of retirements. Specifically, we have found that 72,458 roles are in urgent need of filling when the workforce starts retiring.

However, we have also discovered that there are not enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. We have identified only 1,549 employees who are eligible to participate in a mentorship program.

# Coding:
![Screen Shot 2023-02-18 at 6 09 06 PM](https://user-images.githubusercontent.com/111480084/219903646-ccaad651-ec14-4b61-8624-5d2f7f9ef1d8.jpg)
![Screen Shot 2023-02-18 at 6 08 48 PM](https://user-images.githubusercontent.com/111480084/219903662-95f81cb1-c6d0-4ca3-ae4b-24c6539a64d2.jpg)
