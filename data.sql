SET NAMES utf8mb4;
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';
SET @old_autocommit=@@autocommit;

USE vocab;

SET AUTOCOMMIT=0;
INSERT INTO vocab VALUES
(0, "OOP","inheritance","One of the four pillars of OOP  this solves the problem of redundant code by allowing more specific versions of a class to use an existing implementation of fields/methods"),
(1, "OOP","polymorphism","One of the four pillars of OOP  this removes the need for messy  long if/else blocks by letting child classes define their own variations on parent behavior as needed"),
(2, "OOP","abstraction","One of the four pillars of OOP  this hides details and complexity from other interacting classes to both simplify and organize code"),
(3, "OOP","encapsulation","One of the four pillars of OOP  this focuses on organizing each class's fields and methods so that each class only needs to worry about its own data and actions necessary to exist"),
(4, "Java","this","Java keyword which disambiguates an object's fields when method parameters have the same name"),
(5, "Java","void","Java keyword indicating a method returns nothing"),
(6, "Java","abstract","Java keyword for a (i) class that can't be instantiated or (ii) a method whose implementation isn't defined in said class"),
(7, "SQL","JOIN","SQL keyword used to re-combine tables  usually with one table's foreign key linking together with another table's primary key"),
(8, "SQL","USING","SQL keyword indicating a shared column name in joins  used as a logical connection between the tables"),
(9, "SQL","ORDER BY","SQL phrase indicating a column whose value will determine the sorting order"),
(10, "SQL","SELECT","SQL keyword used to specify which columns should be included in a query"),
(11, "Java","public","Java access modifier keyword which allows any class access to a field or method"),
(12, "Java","try-catch","Coding structure which allows the developer to define specific behavior in preparation of a likely error during runtime"),
(13, "OOP","constructor","A method used to create a new object of a particular class"),
(14, "OOP","class","A blueprint for a logical grouping of methods and fields"),
(15, "Project Management","Waterfall Method","What SDLC is heavily structured and resistant to change?"),
(16, "Java","final","A modifier used for classes  variables  and methods  which makes them non-changeable (impossible to inherit or override)"),
(17, "Java","Object","It is an instance of a class"),
(18,"Java","Class","It defines the common variables and methods of a set of objects");
COMMIT;