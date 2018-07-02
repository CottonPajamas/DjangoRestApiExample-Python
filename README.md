# [Django - Python] Book Review Blog
Web application created in Python using the Django framework.

<br />


## Setting up

1. Clone the repository to your local workspace.

2. Creating the database. Begin by entering the "database" folder and opening the bookreviewsdb.sql file in any editor. Copy everything in the sql file. Now head inside your MySql workbench, create a new SQL tab and paste all your sql commands here. Select all and execute. Upon refreshing your "SCHEMAS" tab, you will find the "bookreviews" schema and all of its relevant tables created.

3. Ensure your database server is online.

4. Inside your 'restproject' folder, open your settings.py file. Here, kindly input in the appropriate database information under the 'DATABASES' tuple.

5. Save and close the file.

6. Run the application on your development server by executing the following command.

>>python manage.py runserver

7. To log in as administrator, enter with the following credentials.

>>Username: admin<br />
>>Password: password1234<br />


<br /><br />
<br /><br />



## Screenshots

![](/screenshots/HomePage.png)

![](/screenshots/DetailsPage.png)

![](/screenshots/AdminLoginPage.png)

![](/screenshots/AdminMainPage.png)

![](/screenshots/AdminEditPage.png)





<br /><br />
<br /><br />

## General technical information

- Python 3.6.4

- Django 1.11

- MySQL 5.7.20-log MySQL Community Server (GPL)

- MySQL Workbench 6.3




