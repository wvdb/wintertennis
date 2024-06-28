DROP TYPE IF EXISTS player_type;

CREATE TYPE player_type AS ENUM ('FULL_TIME', 'PART_TIME');

CREATE TABLE IF NOT EXISTS player
(
    id            serial primary key,
    fname         varchar(50)   not null,
    lname         varchar(50)   not null,
    mobile_number varchar(20)   not null,
    to_pay        numeric(5, 2) null,
    paid          numeric(5, 2) null,
    active        boolean       not null,
    type          player_type,
    data          jsonb         null
);

