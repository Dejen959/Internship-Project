------------------------------------------
----------PAYMENT_CHANNEL-----------------
------------------------------------------
CREATE TABLE payment_channel (
    channel_id    NUMBER(10) NOT NULL,
    channel_name  VARCHAR2(50) NOT NULL,
    description   VARCHAR2(200),
    status        VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    created_at    TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT pk_payment_channel
        PRIMARY KEY (channel_id),

    CONSTRAINT uq_pc_name
        UNIQUE (channel_name),

    CONSTRAINT ck_pc_status
        CHECK (status IN ('ACTIVE', 'INACTIVE'))
);

INSERT INTO payment_channel
    (channel_id, channel_name, description)
VALUES
    (701, 'ATM', 'Automated Teller Machine transactions');

INSERT INTO payment_channel
    (channel_id, channel_name, description)
VALUES
    (615, 'POS', 'Point of Sale transactions');

INSERT INTO payment_channel
    (channel_id, channel_name, description)
VALUES
    (678, 'Mobile Banking', 'Transactions initiated through mobile banking');

INSERT INTO payment_channel
    (channel_id, channel_name, description)
VALUES
    (812, 'Internet Banking', 'Transactions initiated through internet banking');

INSERT INTO payment_channel
    (channel_id, channel_name, description)
VALUES
    (945, 'ETHQR', 'Transactions initiated using QR-based payment');
COMMIT;