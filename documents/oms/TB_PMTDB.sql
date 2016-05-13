/*
================================================================================
��ṹ����:TB_PMTDB
��ṹ����:��Ʒ������������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDB;
drop index AK_TB_PMTDB;
drop table TB_PMTDB;
create table TB_PMTDB  (
   PMTDB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTDB001             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDB002             VARCHAR2(5)                     not null,  /*�������          */
   PMTDB003             INTEGER                         not null,  /*��ƷID            */
   PMTDB004             INTEGER                         not null,  /*��λID            */
   PMTDB005             NUMBER(12,2),                              /*����              */
   PMTDB006             NUMBER(12,2),                              /*����              */
   PMTDB007             NUMBER(12,2),                              /*���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDB primary key (PMTDB_ID)
);
create unique index AK_TB_PMTDB on TB_PMTDB (PMTDB001,PMTDB002,PMTDB003);
create sequence SEQ_TB_PMTDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDB to public;
grant index  on TB_PMTDB to public;
grant update on TB_PMTDB to public; 
grant delete on TB_PMTDB to public;  
grant insert on TB_PMTDB to public; 
grant select on SEQ_TB_PMTDB to public;   