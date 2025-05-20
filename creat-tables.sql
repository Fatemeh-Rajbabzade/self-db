
-- جدول کابران
create table users(
    user_id int auto_increment primary key,
    name nvarchar(255) not null,
    national_id nvarchar(300) unique not null,
    user_type enum('student', 'teacher', 'teacher & student') not null
);

-- جدول دانشجو
create table students(
    student_id int primary key,
    user_id int,
    major nvarchar(300),
    foreign key (user_id) references users(user_id)
);

-- جدول استاد
create table teachers(
    teachet_id int primary key ,
    user_id int,
    personal_code nvarchar(300) unique not null ,
    department nvarchar(300),
    teacher_position nvarchar(300),
    foreign key (user_id) references users(user_id)
);


--  جدول منو غذا
create table menus(
    menu_id int auto_increment primary key,
    food nvarchar(300) not null ,
    price int not null ,
    date date not null
);

-- جدول سفارش
create table orders(
    order_id int auto_increment primary key ,
    user_id int,
    order_date date not null ,
    foreign key (user_id) references users(user_id)
);

-- تعداد غذا ها
create table order_details(
    order_item_id int auto_increment primary key ,
    order_id int,
    menu_id int,
    food_sum int not null ,
    foreign key (order_id) references orders(order_id),
    foreign key (menu_id) references menus(menu_id)
);