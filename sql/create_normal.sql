create database classroom2;

create user classroom2user with password 'classroom2';

alter database classroom2 owner to classroom2user;

revoke connect on database classroom2 from public;

grant all privileges on database classroom2 to classroom2user;
