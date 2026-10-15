--------------------------------
-------FAILUE REASON------------
--------------------------------
CREATE TABLE failure_reason (
    failure_reason_id  NUMBER(10) NOT NULL,
    reason_code        VARCHAR2(30) NOT NULL,
    reason_name        VARCHAR2(100) NOT NULL,
    description        VARCHAR2(300),
    status             VARCHAR2(20) DEFAULT 'ACTIVE' NOT NULL,
    created_at         TIMESTAMP DEFAULT SYSTIMESTAMP NOT NULL,

    CONSTRAINT pk_failure_reason
        PRIMARY KEY (failure_reason_id),

    CONSTRAINT uq_fr_code
        UNIQUE (reason_code),

    CONSTRAINT ck_fr_status
        CHECK (status IN ('ACTIVE', 'INACTIVE'))
);

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (501, 'INS_FUNDS', 'Insufficient Funds',
     'The available balance is insufficient for the requested transaction.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (502, 'INVALID_ACC', 'Invalid Account',
     'The account information provided for the transaction is invalid.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (503, 'TIMEOUT', 'Transaction Timeout',
     'The transaction did not receive a response within the permitted time.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (504, 'COMM_ERR', 'Communication Error',
     'A communication problem occurred during transaction processing.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (505, 'SYS_UNAVAIL', 'System Unavailable',
     'The required payment system or service was unavailable.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (506, 'INVALID_TXN', 'Invalid Transaction',
     'The transaction request contains invalid or unsupported information.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (507, 'LIMIT_EXCEEDED', 'Transaction Limit Exceeded',
     'The requested transaction exceeds an applicable transaction limit.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (508, 'CARD_DECLINED', 'Card Declined',
     'The card transaction was declined by the relevant authorization system.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (509, 'DUPLICATE_TXN', 'Duplicate Transaction',
     'The transaction was identified as a duplicate request.');

INSERT INTO failure_reason
    (failure_reason_id, reason_code, reason_name, description)
VALUES
    (510, 'TECH_ERROR', 'Technical Error',
     'The transaction failed because of an unspecified technical problem.');
COMMIT;