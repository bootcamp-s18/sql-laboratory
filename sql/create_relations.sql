create database classroom3;

create user classroom3user with password 'classroom3';

alter database classroom3 owner to classroom3user;

revoke connect on database classroom3 from public;

grant all privileges on database classroom3 to classroom3user;
