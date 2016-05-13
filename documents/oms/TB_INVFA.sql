/*
================================================================================
��ṹ����:TB_INVFA
��ṹ����:�̵�ƻ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFA;
drop index AK_TB_INVFA;
drop table TB_INVFA;
create table TB_INVFA  (
   INVFA_ID         INTEGER                not null,          /*�̵�ƻ�ID        */
   INVFA001         INTEGER                not null,          /*�̵�ƻ�����      */
   INVFA002         VARCHAR2(30)           not null,          /*�̵�ƻ�����      */
   INVFA003         DATE                   not null,          /*�̵�����          */
   INVFA004         INTEGER                not null,          /*�̵���֯          */
   INVFA005         INTEGER                           ,          /*�̵�ֿ�          */
   INVFA006         INTEGER                           ,          /*�̵����          */
   INVFA007         INTEGER                           ,          /*�̵����          */
   INVFA008         INTEGER                           ,          /*�̵����          */
   INVFA009         INTEGER                           ,          /*�̵��λ          */
   INVFA010         VARCHAR2(1),            not null,         /*����ʽ  1���սᣬ2����ʱ���� 3.�ֶ� */ 
   INVFA011         VARCHAR2(1),            not null,         /*�̵㷽ʽ  */ 
   INVFA012         VARCHAR2(1),                              /*��������          */
   INVFA013         VARCHAR2(255),                                  /*����ID            */
   INVFA014         VARCHAR2(255),                                  /*��������          */
   INVFA015         VARCHAR2(1),                              /*��������          */
   INVFA016         VARCHAR2(255),                                /*����ID            */
   INVFA017         VARCHAR2(255),                                /*��������            */
   INVFA018         VARCHAR2(1),                              /*Ʒ������          */
   INVFA019         VARCHAR2(255),                                /*Ʒ��ID            */
   INVFA020         VARCHAR2(255),                                 /*Ʒ������            */
   INVFA021         VARCHAR2(1),                              /*��Ʒ����          */
   INVFA022         VARCHAR2(255),                                  /*��ƷID            */
   INVFA023         VARCHAR2(255),                                  /*��Ʒ����            */
   INVFA024         VARCHAR2(1),            not null,         /*���״̬          */
   INVFA025         INTEGER,                                  /*¼����            */
   INVFA026         DATE,                                     /*¼��ʱ��          */
   INVFA027         INTEGER,                                  /*�����            */
   INVFA028         DATE,                                     /*���ʱ��          */
   OAID             VARCHAR2(200),                            /*OA����ID          */
   OAGROUP          VARCHAR2(200),                            /*OA������          */
   OANOTE           VARCHAR2(200),                            /*OA��ע            */
   OASPARE1         VARCHAR2(200),                            /*OA����            */
   OASPARE2         VARCHAR2(200),                            /*OA����            */
   CREATE_USER      VARCHAR2(12),                             /*������Ա          */
   USER_GROUP       VARCHAR2(12),                             /*������Ա����      */                               
   CREATE_DATE      DATE,                                     /*��������          */
   MODIFIER         VARCHAR2(12),                             /*�޸���Ա          */
   MODI_DATE        DATE,                                     /*�޸�����          */
   FLAG             NUMBER(1),                                /*����״̬          */
   constraint PK_TB_INVFA primary key (INVFA_ID)
);
create unique index AK_TB_INVFA on TB_INVFA (INVFA002,INVFA004);
create sequence SEQ_TB_INVFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFA to public;
grant index  on TB_INVFA to public;
grant update on TB_INVFA to public; 
grant delete on TB_INVFA to public;  
grant insert on TB_INVFA to public; 
grant select on SEQ_TB_INVFA to public;   