-- 도서 정보를 저장하는 book 테이블 생성
CREATE TABLE book
(
    bookid INT PRIMARY KEY AUTO_INCREMENT,   -- 책 ID (기본키, 자동 증가)
    bookname VARCHAR(32),                    -- 책 이름 (최대 32자)
    publisher VARCHAR(32),                   -- 출판사 (최대 32자)
    price INT                                -- 가격 (정수형)
) ENGINE=INNODB;                              -- 저장 엔진: InnoDB (트랜잭션 및 외래키 지원)

-- 주문 정보를 저장하는 orders 테이블 생성
CREATE TABLE orders
(
    orderid INT PRIMARY KEY AUTO_INCREMENT,  -- 주문 ID (기본키, 자동 증가)
    custid INT,                              -- 고객 ID (customer 테이블과 연관 예정)
    bookid INT,                              -- 책 ID (book 테이블과 연관 예정)
    saleprice INT,                           -- 판매 가격
    orderdate DATE                           -- 주문 날짜
) ENGINE=INNODB;                              -- 저장 엔진: InnoDB

-- 고객 정보를 저장하는 customer 테이블 생성
CREATE TABLE customer
(
    custid INT PRIMARY KEY AUTO_INCREMENT,   -- 고객 ID (기본키, 자동 증가)
    custname VARCHAR(32) NOT NULL,           -- 고객 이름 (NULL 불가, 최대 32자)
    address VARCHAR(32),                     -- 주소 (최대 32자)
    phone VARCHAR(32)                        -- 전화번호 (최대 32자)
) ENGINE=INNODB;                              -- 저장 엔진: InnoDB
