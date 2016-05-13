/*
================================================================================
��ṹ����:TB_INVGA
��ṹ����:��澵���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVGA;
drop index AK_TB_INVGA;
drop table TB_INVGA;
create table TB_INVGA  (
   INVGA_ID         INTEGER                  not null,      /*����ID             */  
   INVGA001         INTEGER                  not null,      /*�ֿ�ID             */
   INVGA002         INTEGER                  not null,      /*��λ               */
   INVGA003         INTEGER                  not null,      /*��Ʒ����           */
   INVGA004         INTEGER                  not null,      /*��Ӧ��             */ 
   INVGA005         INTEGER,                                /*ά��1              */
   INVGA006         INTEGER,                                /*ά��2              */
   INVGA007         INTEGER,                                /*ά��3              */
   INVGA008         INTEGER,                                /*ά��4              */
   INVGA009         INTEGER,                                /*ά��5              */   
   INVGA010         INTEGER                  not null,      /*��λ               */
   INVGA011         NUMBER(12,2)             not null,      /*������             */
   INVGA012         VARCHAR2(255),                          /*��ע               */
   INVGA013         INTEGER                  not null,      /*�̵�ƻ�ID         */ 
   CREATE_USER      VARCHAR2(12),                           /*������Ա           */
   USER_GROUP       VARCHAR2(12),                           /*������Ա����       */                               
   CREATE_DATE      DATE,                                   /*��������           */
   MODIFIER         VARCHAR2(12),                           /*�޸���Ա           */
   MODI_DATE        DATE,                                   /*�޸�����           */
   FLAG             NUMBER(1),                              /*����״̬           */
   constraint PK_TB_INVGA primary key (INVGA_ID)
);
create unique index AK_TB_INVGA on TB_INVGA (INVGA001,INVGA002,INVGA003);
create sequence SEQ_TB_INVGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVGA to public;
grant index  on TB_INVGA to public;
grant update on TB_INVGA to public; 
grant delete on TB_INVGA to public;  
grant insert on TB_INVGA to public; 
grant select on SEQ_TB_INVGA to public;   