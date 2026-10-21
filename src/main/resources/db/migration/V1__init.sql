/*reference*/
create table roles
(
    id   serial primary key,
    name varchar(60) not null unique
);
create table education_types
(
    id        serial primary key,
    type_name text not null unique
);
create table education_institutions
(
    id   serial primary key,
    name text not null
);
create table employment_types
(
    id   serial primary key,
    name varchar(60) not null unique
);
create table companies
(
    id   serial primary key,
    name text not null unique
);
create table positions
(
    id   serial primary key,
    name varchar(30) not null unique
);
create table confirmation_statuses
(
    id   serial primary key,
    name varchar(20) not null check ( name in ('ACTIVE', 'NOT_ACTIVE') )
);

/*entity*/
create table users
(
    id         serial primary key,
    surname    varchar(30)          not null,
    name       varchar(30)          not null,
    patronymic varchar(30),
    role_id    int references roles not null,
    registered_at date default current_date
);
create table educations
(
);
create table work_experiences
(
);
create table skills
(
);
create table confirmations
(
);
create table rating
(
);

/*other*/
create table contact_info
(
    id      serial primary key,
    email   text                 not null unique,
    phone   varchar(30)          not null unique,
    user_id int references users not null
);