/*
================================================================================
��ṹ����:TB_INVDB
��ṹ����:��װ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVDB;
drop index AK_TB_INVDB;
drop table TB_INVDB;
create table TB_INVDB  (                                       
   INVDB_ID        INTEGER                      not null,     /*�����ϸID     */  
   INVDB001        INTEGER                      not null,     /*�����ID       */  
   INVDB002        INTEGER                      not null,     /*��Ʒ����       */  
   INVDB003        INTEGER ,                                  /*ά��1          */  
   INVDB004        INTEGER,                                   /*ά��2          */  
   INVDB005        INTEGER,                                   /*ά��3          */  
   INVDB006        INTEGER,                                   /*ά��4          */  
   INVDB007        INTEGER,                                   /*ά��5          */  
   INVDB008        INTEGER                      not null,     /*�ֿ�           */  
   INVDB009        INTEGER,                                   /*��λ           */  
   INVDB010        INTEGER                      not null,     /*���ⵥλ       */  
   INVDB011        NUMBER(18,3)                 not null,     /*��λ������     */  
   INVDB012        NUMBER(12,2)                 not null,     /*�����         */  
   INVDB013        NUMBER(12,2)                 not null,     /*�黹��         */  
   INVDB014        NUMBER(12,2)                 not null,     /*����           */  
   INVDB015        NUMBER(12,2)                 not null,     /*���           */  
   INVDB016        VARCHAR2(1)                  not null,     /*��Ʒ��������   */  
   INVDB017        VARCHAR2(255),                             /*��ע           */  
   INVDB018        VARCHAR2(30),                              /*������         */
   CREATE_USER     VARCHAR2(12),                              /*������Ա           */             
   USER_GROUP      VARCHAR2(12),                              /*������Ա����       */             
   CREATE_DATE     DATE,                                      /*��������           */             
   MODIFIER        VARCHAR2(12),                              /*�޸���Ա           */             
   MODI_DATE       DATE,                                      /*�޸�����           */             
   FLAG            NUMBER(1),                                 /*����״̬           */            


  constraint PK_TB_INVDB primary key (INVDB_ID)                               
);                                           
create unique index AK_TB_INVDB on TB_INVDB (INVDB_ID,INVDB002);               
create sequence SEQ_TB_INVDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDB to public;                                     
grant index  on TB_INVDB to public;                                     
grant update on TB_INVDB to public;                                      
grant delete on TB_INVDB to public;                                       
grant insert on TB_INVDB to public;                                      
grant select on SEQ_TB_INVDB to public;                                        