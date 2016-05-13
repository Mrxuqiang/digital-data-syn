/*
================================================================================
��ṹ����:TB_CONDB
��ṹ����:��ͬ��ֹ�����ʵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONDB;
drop index AK_TB_CONDB;
drop table TB_CONDB;
create table TB_CONDB  (
   CONDB_ID             INTEGER                         not null,  /*��ͬ��ֹ�����ʵ�ID  */
   CONDB001             INTEGER                         not null,  /*��ͬ��ֹID          */
   CONDB002             VARCHAR2(1)                     not null,  /*��������            */
   CONDB003             INTEGER                         not null,  /*����ID              */
   CONDB004             DATE                            not null,  /*��������            */
   CONDB005             DATE                            not null,  /*�ʵ�����            */
   CONDB006             DATE                            not null,  /*�ʵ�ֹ��            */
   CONDB007             NUMBER(12,2)                    not null,  /*���ý��            */
   CONDB008             NUMBER(12,2)                    not null,  /*�Żݽ��            */
   CONDB009             NUMBER(12,2)                    not null,  /*Ԥ�����            */
   CONDB010             NUMBER(12,2)                    not null,  /*ʵ�ʷ��ý��        */
   CONDB011             INTEGER,                                   /*���õ�ID            */
   CONDB012             DATE,                                      /*��������            */
   CONDB013             VARCHAR2(1),                               /*�ѽ�                */
   CONDB014             NUMBER(12,2)                    not null,  /*�ʵ�������        */
   CONDB015             INTEGER,                                   /*������õ�ID        */
   CONDB016             NUMBER(12,2),                              /*���ò�����        */
   CONDB017             NUMBER(12,2),                              /*��׼����            */
   CONDB018             NUMBER(12,2),                              /*���ñ�׼            */
   CONDB019             NUMBER(12,2),                              /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */  
   constraint PK_TB_CONDB primary key (CONDB_ID)
);
create unique index AK_TB_CONDB on TB_CONDB (CONDB001,CONDB002,CONDB003,CONDB005);
create sequence SEQ_TB_CONDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONDB to public;
grant index  on TB_CONDB to public;
grant update on TB_CONDB to public; 
grant delete on TB_CONDB to public;  
grant insert on TB_CONDB to public; 
grant select on SEQ_TB_CONDB to public;   