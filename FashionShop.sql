-- 회원정보
create table shop_userinfo(  
    usesrid varchar(8) primary key,
    username varchar(12),
    password varchar(255),
    address varchar(100),
    phone varchar(16),
    email varchar(100),
    joindate date,
    updatedate date
);
-- 관리자정보
create table shop_admin(
    adminnum number primary key,
    userid varchar(8),
    authority number,
    rank varchar(10),
    foreign key(userid) references shop_userinfo(userid)
);
--상품정보
create table shop_product(
	productnum varchar(8) primary key,
	productname varchar(50),
	productsize varchar(5),
	price number(10)
);
--주문정보
create table shop_order(
	ordernum varchar(8) primary key,
	userid varchar(8),
    foreign key(userid) references shop_userinfo(userid)
);
--주문정보상세
create table shop_orderitem(
	ordernum varchar(8),
	productnum varchar(8),
	ordercnt number(10),
	orderprice number(10),
    foreign key(ordernum) references shop_order(ordernum),
    foreign key(productnum) references shop_product(productnum)
);
--판매정보, 발송
create table shop_sales(
	salesnum varchar(8) primary key,
	ordernum varchar(8),
	salesprice number(10),
	orderdate date,
	ouderupdatedate date,
    foreign key(ordernum) references shop_order(ordernum)
);
--재고정보
create table shop_stock(
	stocknum varchar(8) primary key,
	productnum varchar(8),
	stockcnt number(10),
	warehouse varchar(8),
	stockdate date,
	stockupdatedate date,
    foreign key(productnum) references shop_product(productnum)
);
--장바구니정보
create table shop_cart(
	userid varchar(8),
	cartnum varchar(8) primary key,
    foreign key(userid) references shop_userinfo(userid)
);
--장바구니정보상세
create table shop_cartitem(
	cartitmenum number,
	cartnum varchar(8),
	productnum varchar(8),
    foreign key(cartnum) references shop_cart(cartnum),
    foreign key(productnum) references shop_product(productnum)
);
--문의
create table shop_inquiry(
	inquirynum number primary key,
	userid varchar(8),
	adminnum number,
	content varchar(1000),
	inquirydate date,
	answer varchar(1000),
	answerdate date,
    foreign key(userid) references shop_userinfo(userid),
    foreign key(adminnum) references shop_admin(adminnum)
);

insert into shop_userinfo(userid, username, password, address, phone, email, joindate) values('test1', '테스터1', '1234', '주소테스트','01012341234', 'test1@email.com',sysdate);
insert into shop_userinfo(userid, username, password, address, phone, email, joindate) values('test2', '테스터2', '1234', '주소테스트','01012341235', 'test2@email.com',sysdate);

commit;