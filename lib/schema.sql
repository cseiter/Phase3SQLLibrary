create table series (
id INTEGER primary key,
title text,
author_id integer,
subgenre_id integer
);

create table subgenres (
    id INTEGER primary key,
    name text
);

create table authors (
    id INTEGER primary key,
    name text
);