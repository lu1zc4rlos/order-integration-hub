CREATE TABLE itens_pedidos (
                               id               BIGSERIAL     PRIMARY KEY,
                               nome_produto     VARCHAR(50)   NOT NULL,
                               quantidade       INTEGER       NOT NULL,
                               preco_unitario   NUMERIC(12,2) NOT NULL,
                               pedido_id       BIGINT        NOT NULL,
                               CONSTRAINT fk_itens_pedidos_pedido
                                  FOREIGN KEY (pedido_id) REFERENCES pedidos (id) ON DELETE RESTRICT

);

CREATE INDEX idx_itens_pedidos_pedido_id ON itens_pedidos (pedido_id);