
drop database if exists ejercicio5;

create database ejercicio5;
use ejercicio5;
create table UnaTabla(id varchar(5), numero int(2));

delimiter //
CREATE PROCEDURE d(p1 int)
     BEGIN
       SET @x = 0;
       REPEAT
	 INSERT INTO UnaTabla VALUES ("ISE",@x);
         SET @x = @x + 1;
       UNTIL @x >= p1 END REPEAT;
     END
    //

call d(10000);
