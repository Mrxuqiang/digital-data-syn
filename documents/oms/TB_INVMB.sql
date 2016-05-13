/*
================================================================================
��ṹ����:TB_INVMB
��ṹ����:��澵���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVMB;
drop index AK_TB_INVMB;
drop table TB_INVMB;
create table TB_INVMB  (
   INVMB_ID         INTEGER                  not null,      /*����ID             */  
   INVMB001         INTEGER                  not null,      /*�ֿ�ID             */
   INVMB002         INTEGER                          ,      /*��λ               */
   INVMB003         VARCHAR2(1)              not null,      /*��Ʒ��������       */
   INVMB004         VARCHAR2(1)              not null,      /*��������           */
   INVMB005         INTEGER                  not null,      /*��Ʒ����           */
   INVMB006         INTEGER                  not null,      /*��Ӧ��             */ 
   INVMB007         INTEGER,                                /*ά��1              */
   INVMB008         INTEGER,                                /*ά��2              */
   INVMB009         INTEGER,                                /*ά��3              */
   INVMB010         INTEGER,                                /*ά��4              */
   INVMB011         INTEGER,                                /*ά��5              */   
   INVMB012         INTEGER                  not null,      /*��λ               */
   INVMB013         NUMBER(12,2)             not null,      /*������             */
   INVMB014         VARCHAR2(255),                          /*��ע               */
   INVMB015         INTEGER                  not null,      /*�̵�ƻ�ID         */ 
   CREATE_USER      VARCHAR2(12),                           /*������Ա           */
   USER_GROUP       VARCHAR2(12),                           /*������Ա����       */                               
   CREATE_DATE      DATE,                                   /*��������           */
   MODIFIER         VARCHAR2(12),                           /*�޸���Ա           */
   MODI_DATE        DATE,                                   /*�޸�����           */
   FLAG             NUMBER(1),                              /*����״̬           */
   constraint PK_TB_INVMB primary key (INVMB_ID)
);

create sequence SEQ_TB_INVMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVMB to public;
grant index  on TB_INVMB to public;
grant update on TB_INVMB to public; 
grant delete on TB_INVMB to public;  
grant insert on TB_INVMB to public; 
grant select on SEQ_TB_INVMB to public;   