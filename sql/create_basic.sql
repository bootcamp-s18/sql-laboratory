-- Create the database for our basic database/table structure example

create database classroom1;

create user classroom1user with password 'classroom1';

alter database classroom1 owner to classroom1user;

revoke connect on database classroom1 from public;

grant all priviliges on database classroom1 to classroom1user;

