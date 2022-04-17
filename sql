create database store;
 use store;
    Create table countries(
        code int primary key,
        name varchar(20) unique,
        constinent_name varchar(20) not null
    );

    Create table users(
        id int primary key ,
        full_name varchar(20),
        email varchar(20) unique ,
        gender char(1) check ( gender='m' or gender='f' ),
        date_of_birth varchar(15),
        created_at datetime,
        country_code int,
        foreign key (country_code)references countries(code)
    );

    CREATE table order(
        id int primary key ,
        status varchar(6),
        created_at datetime,
        foreign key (user_id)references users(id)
    );

    Create table order_products(
        order_id int,
        product_id int,
        quantity int default 0,
        PRIMARY KEY (order_id,product_id),
        FOREIGN KEY (order_id) REFERENCES orders(id),
        FOREIGN KEY (product_id)REFERENCES products(id)
    );
      Create table products(
          id int primary key ,
          name varchar(10)not null ,
          price varchar(10)check ( statis='valid'or'expired' ),
      );
