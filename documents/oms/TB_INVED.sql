/*
================================================================================
��ṹ����:TB_INVED
��ṹ����:��ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVED;
drop index AK_TB_INVED;
drop table TB_INVED;
create table TB_INVED  (                                       
   INVED_ID        INTEGER                         not null,      /*�����ϸID         */       
   INVED001        INTEGER                         not null,      /*��ⵥID           */   
   --INVED002        VARCHAR2(1)                     ,      /*����          */ 
   INVED003        INTEGER                         not null,      /*�ɷ���ƷID         */   
   INVED004        INTEGER,                                       /*ά��1              */   
   INVED005        INTEGER,                                       /*ά��2              */   
   INVED006        INTEGER,                                       /*ά��3              */   
   INVED007        INTEGER,                                       /*ά��4              */   
   INVED008        INTEGER,                                       /*ά��5              */   
   INVED009        INTEGER                         not null,      /*�ֿ�ID             */
   INVED010        INTEGER                         not null,      /*��λID             */   
   INVED011        INTEGER                         not null,      /*��λID             */
   INVED012        NUMBER(18,3)                    not null,      /*��λ������         */   
   INVED013        NUMBER(18,3)                    not null,      /*�����             */   
   INVED014        NUMBER(12,2),                                  /*˰ǰ����           */   
   INVED015        NUMBER(12,2)                    not null,      /*��˰����           */   
   INVED016        INTEGER                                        /*˰��ID             */   
   INVED017        NUMBER(12,2),                                  /*˰��               */
   INVED018        NUMBER(12,2),                                  /*˰ǰ���           */
   INVED019        NUMBER(12,2)                    not null,      /*��˰���           */
   INVED020        VARCHAR2(1)                     not null,      /*��Ʒ��������       */
   INVED022        VARCHAR2(255),                                 /*��ע               */
   INVED023        VARCHAR2(30),                                  /*������             */
   INVED024        VARCHAR2(1)                     not null,      /*��������       */
   CREATE_USER     VARCHAR2(12),                                  /*������Ա           */             
   USER_GROUP      VARCHAR2(12),                                  /*������Ա����       */             
   CREATE_DATE     DATE,                                          /*��������           */             
   MODIFIER        VARCHAR2(12),                                  /*�޸���Ա           */             
   MODI_DATE       DATE,                                          /*�޸�����           */             
   FLAG            NUMBER(1),                                     /*����״̬           */            


  constraint PK_TB_INVED primary key (INVED_ID)                               
);                                           
create unique index AK_TB_INVED on TB_INVED (INVED_ID,INVED004);               
create sequence SEQ_TB_INVED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVED to public;                                     
grant index  on TB_INVED to public;                                     
grant update on TB_INVED to public;                                      
grant delete on TB_INVED to public;                                       
grant insert on TB_INVED to public;                                      
grant select on SEQ_TB_INVED to public;                                        