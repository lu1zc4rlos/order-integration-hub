CREATE TABLE pedidos (
                         id               BIGSERIAL     PRIMARY KEY,
                         origem           VARCHAR(50)   NOT NULL,
                         numero_externo   VARCHAR(50)   NOT NULL,
                         cpf_cliente      CHAR(11)      NOT NULL,
                         valor_total      NUMERIC(12,2) NOT NULL,
                         status           VARCHAR(20)   NOT NULL,
                         tentativas       INT           NOT NULL DEFAULT 0,
                         ultima_falha_em  TIMESTAMP,
                         ultimo_erro      VARCHAR,
                         payload_original JSONB NOT NULL,
                         criado_em        TIMESTAMP     NOT NULL DEFAULT now(),
                         CONSTRAINT uq_pedidos_origem_numero UNIQUE (origem, numero_externo)
);