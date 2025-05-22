use self_db;

-- insert for users
insert into users(name, national_id, user_type)
values('Fateme','0481102525', 'student');

insert into users(name, national_id, user_type)
values ('Aynaz', '0400447896', 'student');

insert into users(name, national_id, user_type)
values ('Tina', '145778925', 'teacher');

insert into users(name, national_id, user_type)
values ('Mahan', '0487995243', 'teacher & student');

-- insert for students
insert into students(student_id, user_id, major)
values (40212015, 1, 'Math');

insert into  students(student_id, user_id, major)
values (40212025, 2, 'Computer');

insert into students(student_id, user_id, major)
values (40212030, 3, 'Computer Science');

insert into students(student_id, user_id, major)
values (40012045, 4, 'Math');

-- insert for  teacher
insert into teachers(teachet_id, user_id, personal_code, department, teacher_position)
values (7884, 4, 40012080, 'Mathematics','Professor');

-- insert for menus
insert into menus(food, price, date)
values ('Pizza', 450, '2025-05-20');

insert into menus(food, price, date)
values ('Ghorme', 230, '2025-05-20');

insert into menus(food, price, date)
values ('Seafood', 3700, '2025-05-21');

insert into menus(food, price, date)
values ('Pasta', 350, '2025-05-21');

-- insert for orders
insert into orders(user_id, order_date)
values (1,'2028-05-20');

insert into orders(user_id, order_date)
values (2, '2025-05-20');

insert into orders(user_id, order_date)
values(3, '2025-05-21');

insert into orders(user_id, order_date)
values (3, '2025-05-21');

insert into orders(user_id, order_date)
values (4, '2025-05-21');

-- insert for order-details
insert into order_details(order_id, menu_id, food_sum)
values (1,1, 1);

insert into order_details(order_id, menu_id, food_sum)
values (2, 2, 1);

insert into order_details(order_id, menu_id, food_sum)
values (3, 3,2);

insert into order_details(order_id, menu_id, food_sum)
values (4, 4,1);

select * from order_details;
