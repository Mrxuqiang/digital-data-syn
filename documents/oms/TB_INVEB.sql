/*
================================================================================
��ṹ����:TB_INVEB
��ṹ����:��װ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVEB;
drop index AK_TB_INVEB;
drop table TB_INVEB;
create table TB_INVEB  (                                       
   INVEB_ID        INTEGER                         not null,      /*��װ��ϸID         */       
   INVEB001        INTEGER                         not null,      /*��װ��ID           */   
   INVEB002        VARCHAR2(1),                                   /*�Ƿ���װ           */  -- update by hansf ���ã�����Ϊnull
   INVEB003        INTEGER                    not null,      /*�ɷ���Ʒ����       */   
   INVEB004        INTEGER,                                       /*ά��1              */   
   INVEB005        INTEGER,                                       /*ά��2              */   
   INVEB006        INTEGER,                                       /*ά��3              */   
   INVEB007        INTEGER,                                       /*ά��4              */   
   INVEB008        INTEGER,                                       /*ά��5              */   
   INVEB009        INTEGER                         not null,      /*�ֿ�               */
   INVEB010        INTEGER                         not null,      /*��λ               */   
   INVEB011        INTEGER                         not null,      /*��λ               */
   INVEB012        NUMBER(18,3)                    not null,      /*��λ������         */   
   INVEB013        NUMBER(18,3)                    not null,      /*��װ��             */   
   INVEB014        NUMBER(12,2),                                  /*˰ǰ����           */   
   INVEB015        NUMBER(12,2)                    not null,      /*��˰����           */   
   INVEB016        NUMBER(12,2),                                  /*˰��               */   
   INVEB017        NUMBER(12,2),                                  /*˰��               */
   INVEB018        NUMBER(12,2),                                  /*˰ǰ���           */
   INVEB019        NUMBER(12,2)                    not null,      /*��˰���           */
   INVEB020        VARCHAR2(1)                     not null,      /*��Ʒ��������       */
   INVEB021        VARCHAR2(1),                                   /*��Ȩ����           */  -- update by hansf ���ã�����Ϊnull
   INVEB022        VARCHAR2(255),                                 /*��ע               */
   INVEB023        VARCHAR2(30),                                  /*������             */
   CREATE_USER     VARCHAR2(12),                                  /*������Ա           */             
   USER_GROUP      VARCHAR2(12),                                  /*������Ա����       */             
   CREATE_DATE     DATE,                                          /*��������           */             
   MODIFIER        VARCHAR2(12),                                  /*�޸���Ա           */             
   MODI_DATE       DATE,                                          /*�޸�����           */             
   FLAG            NUMBER(1),                                     /*����״̬           */            


  constraint PK_TB_INVEB primary key (INVEB_ID)                               
);                                           
--create unique index AK_TB_INVEB on TB_INVEB (INVEB_ID,INVEB004);               
create sequence SEQ_TB_INVEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVEB to public;                                     
grant index  on TB_INVEB to public;                                     
grant update on TB_INVEB to public;                                      
grant delete on TB_INVEB to public;                                       
grant insert on TB_INVEB to public;                                      
grant select on SEQ_TB_INVEB to public;                                        