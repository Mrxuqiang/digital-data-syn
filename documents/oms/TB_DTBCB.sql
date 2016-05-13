/*
================================================================================
��ṹ����:TB_DTBCB
��ṹ����:·����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DTBCB;
drop index AK_TB_DTBCB;
drop table TB_DTBCB;
create table TB_DTBCB  (                                       
   DTBCB_ID           INTEGER                        not null,     /*����·����ͷID   */ 
   DTBCB001           VARCHAR2(30)                   not null,     /*����·�����     */ 
   DTBCB002           INTEGER                        not null,     /*�������         */ 
   DTBCB003           INTEGER                        not null,     /*��ʼ�ص�         */ 
   DTBCB004           INTEGER                        not null,     /*Ŀ�ĵص�         */ 
   DTBCB005           NUMBER(18,3),                                /*��������         */ 
   DTBCB006           VARCHAR2(1)                    not null,     /*·�����         */ 
   DTBCB007           INTEGER                        not null,     /*Ӫ����֯ID       */ 
   CREATE_USER        VARCHAR2(12),                                /*������Ա        */             
   USER_GROUP         VARCHAR2(12),                                /*������Ա����    */             
   CREATE_DATE        DATE,                                        /*��������        */             
   MODIFIER           VARCHAR2(12),                                /*�޸���Ա        */             
   MODI_DATE          DATE,                                        /*�޸�����        */             
   FLAG               NUMBER(1),                                   /*����״̬        */            


  constraint PK_TB_DTBCB primary key (DTBCB_ID)                               
);                                           
create unique index AK_TB_DTBCB on TB_DTBCB (DTBCB001,DTBCB002);               
create sequence SEQ_TB_DTBCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCB to public;                                     
grant index  on TB_DTBCB to public;                                     
grant update on TB_DTBCB to public;                                      
grant delete on TB_DTBCB to public;                                       
grant insert on TB_DTBCB to public;                                      
grant select on SEQ_TB_DTBCB to public;                                        