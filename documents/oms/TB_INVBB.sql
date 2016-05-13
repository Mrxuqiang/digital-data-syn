/*
================================================================================
��ṹ����:TB_INVBB
��ṹ����:�Ʋֵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVBB;
drop index AK_TB_INVBB;
drop table TB_INVBB;
create table TB_INVBB  (                                       
   INVBB_ID         INTEGER                        not null,     /*�Ʋ���ϸID*/ 
   INVBB001         INTEGER                        not null,     /*�Ʋֵ�ID    */ 
   INVBB002         INTEGER                        not null,     /*��Ʒ����    */ 
   INVBB003         INTEGER,                                     /*ά��1           */ 
   INVBB004         INTEGER,                                     /*ά��2           */ 
   INVBB005         INTEGER,                                     /*ά��3           */ 
   INVBB006         INTEGER,                                     /*ά��4           */ 
   INVBB007         INTEGER,                                     /*ά��5           */ 
   INVBB008         INTEGER                        not null,     /*�Ƴ���λ        */ 
   INVBB009         INTEGER                        not null,     /*�����λ        */ 
   INVBB010         INTEGER,                                     /*����ID(�Ӽ�)      */ 
   INVBB011         VARCHAR2(30),                                /*�������(�Ӽ�)*/ 
   INVBB012         NUMBER(18,3)                   not null,     /*�Ƴ���          */ 
   INVBB013         VARCHAR2(1)                   not null,     /*�Ƿ񲹼�    */ 
   INVBB014         VARCHAR2(255),                               /*��ע            */ 
   CREATE_USER      VARCHAR2(12),                                /*������Ա           */             
   USER_GROUP       VARCHAR2(12),                                /*������Ա����       */             
   CREATE_DATE      DATE,                                        /*��������           */             
   MODIFIER         VARCHAR2(12),                                /*�޸���Ա           */             
   MODI_DATE        DATE,                                        /*�޸�����           */             
   FLAG             NUMBER(1),                                   /*����״̬           */            


  constraint PK_TB_INVBB primary key (INVBB_ID)                               
);                                                      
create sequence SEQ_TB_INVBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBB to public;                                     
grant index  on TB_INVBB to public;                                     
grant update on TB_INVBB to public;                                      
grant delete on TB_INVBB to public;                                       
grant insert on TB_INVBB to public;                                      
grant select on SEQ_TB_INVBB to public;        