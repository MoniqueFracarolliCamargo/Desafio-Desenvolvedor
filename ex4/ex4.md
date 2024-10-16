# File with heading

This is a file with a top-level heading

-- Comando SQL

SELECT
    c.cliente_id,
    c.razao_social,
    t.telefone_numero
FROM
    cliente c
INNER JOIN telefone t ON c.cliente_id = t.cliente_id
INNER JOIN estado e ON c.estado_id = e.estado_id
WHERE
    e.codigo = 'SP';
