\c postgres;
create table concurrent_users_fs(window_start_time timestamp, window_end_time timestamp, last_updated_time timestamp, user_count bigint, primary key(window_start_time, window_end_time, last_updated_time));
create table concurrent_users_kafka(window_start_time timestamp, window_end_time timestamp, last_updated_time timestamp, user_count bigint, create_time timestamp default now(), primary key(window_start_time, window_end_time, last_updated_time));
create table concurrent_users_by_channel(channel varchar,window_start_time timestamp, window_end_time timestamp, last_updated_time timestamp, user_count bigint, create_time timestamp default now(), primary key(channel, window_start_time, window_end_time, last_updated_time));