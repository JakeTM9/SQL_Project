CREATE LOGIN Jakob WITH PASSWORD = 'jakob';
CREATE LOGIN Student1 WITH PASSWORD = 'student1';
CREATE LOGIN Teacher1 WITH PASSWORD = 'Teacher1';

create user Administrator for login Jakob
create user Student for login Student1
create user Teacher for login Teacher1

Use School
Go
Grant Select on Enrollment to Student
Grant Select on Course to Teacher
Grant Select on Enrollment to Teacher
Grant Select on Student to Teacher
GRANT ALL PRIVILEGES to Administrator /*depricated but does what I need */
