SELECT * FROM inventory.products;

select * from inventory.accounts;

SET SQL_SAFE_UPDATES = 0;
delete from inventory.products;
SET SQL_SAFE_UPDATES = 1;

SELECT * FROM inventory.products;


select * from inventory.users;

insert into inventory.users 
(username, password) values ('guest','test');


select * from inventory.recipes;

SET SQL_SAFE_UPDATES = 0;
delete from inventory.recipes;
SET SQL_SAFE_UPDATES = 1;

select * from inventory.recipeIngredients;


