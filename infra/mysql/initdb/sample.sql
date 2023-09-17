SET
    CHARSET UTF8;

create table demo.users(
    id bigint(20) unsigned AUTO_INCREMENT PRIMARY KEY,
    name varchar(100),
    age tinyint,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME
);

INSERT INTO
    demo.users(name, age)
VALUES
    ('太郎', 30),
('次郎', 25),
('三郎', 19);