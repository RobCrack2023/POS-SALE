-- Script para crear la tabla config en SQLite
-- Fecha: 2025-11-03

CREATE TABLE IF NOT EXISTS config (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    sql1 TEXT,
    idimpticket TEXT,
    idimprpt TEXT,
    idcaja INTEGER,
    idsucursal INTEGER
);

-- Insertar registro inicial con valores por defecto
INSERT INTO config (sql1, idimpticket, idimprpt, idcaja, idsucursal)
VALUES ('', '', '', 1, 1);
