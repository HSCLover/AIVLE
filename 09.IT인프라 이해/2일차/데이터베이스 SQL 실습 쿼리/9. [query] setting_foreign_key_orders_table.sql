-- Orders 테이블에 외래키 설정
alter table Orders add FOREIGN KEY(bookid) REFERENCES Book(bookid); -- bookid는 Book 테이블의 bookid를 참조 (도서 정보 연결)
alter table Orders add FOREIGN KEY(custid) REFERENCES Customer(custid); -- custid는 Customer 테이블의 custid를 참조 (고객 정보 연결)