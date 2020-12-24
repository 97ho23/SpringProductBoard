
//creation����
create sequence seq_wproduct_pid;
--yjh :  ���� �̸� �̴ϼ�(NameInitial)
create table tbl_wproduct_yjh (
	pid number(10, 0), --��ǰid
	pname varchar2(50) not null, --��ǰ��
	psort varchar2(20) not null, --����
	manufacture varchar2(30) not null, --������
	price	number(10) not null, --����
	saleprice number(10) not null, --�ǸŰ���
             info    varchar2(500) , --��ǰ����
	regdate date default sysdate,
	updatedate date default sysdate
);

alter table tbl_wproduct_yjh add constraint pk_wproduct_yjh primary key (pid);
 
--�Է�(5ȸ �ݺ� ����)
insert into tbl_wproduct_yjh(pid, pname, psort, manufacture, price, saleprice, info)
values (seq_wproduct_pid.nextval, 'iPhone 8', '스마트폰', 'Samsung', 1099000, 990000, '4G');
insert into tbl_wproduct_yjh(pid, pname, psort, manufacture, price, saleprice, info)
values (seq_wproduct_pid.nextval, 'iPhone 8s', '스마트폰', 'Samsung', 1099000, 990000, '4G');
insert into tbl_wproduct_yjh(pid, pname, psort, manufacture, price, saleprice, info)
values (seq_wproduct_pid.nextval, 'iPhone 9', '스마트폰', 'Samsung', 999000, 890000, '4G');
insert into tbl_wproduct_yjh(pid, pname, psort, manufacture, price, saleprice, info)
values (seq_wproduct_pid.nextval, 'iPhone 9s', '스마트폰', 'Apple', 999000, 890000, '4G');

-- �Է�(insertSelectKey)
select seq_wproduct_pid.nextval from dual; -- pid�� ��ȸ��(if:6)�� �Ʒ� insert�� �Է�

insert into tbl_wproduct_yjh(pid, pname, psort, manufacture, price, saleprice, info)
values (6, 'Galaxy Note20 5G', '�ڵ���', '�Ｚ', 1199000, 990000, ��5G��);


--��ü ��ȸ
select * from tbl_wproduct_yjh where pid > 0;


--����ȸ(bno)
select * from tbl_wproduct_yjh where pid=3;

--����
update tbl_wproduct_yjh 
set pname='Galaxy Note20 5G',
    psort = '스마트폰',
    manufacture = 'samsung',
    price = 1199000,
    saleprice = 880000,
    info = '삼성버즈, 스마트워치 중 택 1 무료선물'
where pid = 1;

update tbl_wproduct_yjh 
set manufacture = 'Samsung'
where manufacture = 'samsung';

--����
delete from tbl_wproduct_yjh where pid = 3;