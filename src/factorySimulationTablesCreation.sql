--- Copyright (C), 2023-2024, Sara Echeverria (bl33h)
    --  @author Sara Echeverria
    --  FileName: factorySimulationTablesCreation
    --  @version: I
    --  Creation: 08/03/2023
    --  Last modification: 09/03/2023

create table pieces(
piece_code VARCHAR(30) primary key,
weight FLOAT4,
piece_name text,
description TEXT
);

create table equipment(
equipment_code VARCHAR(30) primary key,
equipment_name text,
model text,
country TEXT
);

CREATE TABLE operation (
operation_code VARCHAR(30) PRIMARY KEY,
piece VARCHAR(30),
operation_name TEXT,
piece_equipment VARCHAR(30),
FOREIGN KEY (piece) REFERENCES pieces(piece_code),
FOREIGN KEY (piece_equipment) REFERENCES equipment(equipment_code)
);

create table worker(
worker_code VARCHAR(30) primary key,
worker_name VARCHAR(30),
start_date DATE
);

CREATE TABLE norms (
norm_code VARCHAR(30) PRIMARY KEY,
worker VARCHAR(30),
description TEXT,
equipment VARCHAR(30),
time_of_execution FLOAT4,
operation VARCHAR(30),
FOREIGN KEY (worker) REFERENCES worker(worker_code),
FOREIGN KEY (equipment) REFERENCES equipment(equipment_code),
FOREIGN KEY (operation) REFERENCES operation(operation_code)
);