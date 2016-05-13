/*
================================================================================
��ṹ����:TB_PUBDB
��ṹ����:��ʽ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBDB;
drop index AK_TB_PUBDB;
drop table TB_PUBDB;
create table TB_PUBDB  (
   PUBDB_ID             INTEGER                         not null,  /*��ʽID             */
   PUBDB001             VARCHAR2(4)                     not null,  /*��ʽ����           */
   PUBDB002             VARCHAR2(30)                    not null,  /*��ʽ����           */
   PUBDB003             INTEGER                         not null,  /*��ʽ����ID         */
   PUBDB004             VARCHAR2(500),                             /*��ʽ����           */
   PUBDB005             VARCHAR2(255),                             /*��ʽ����           */
   PUBDB006             VARCHAR2(1)                     not null,  /*��̬״̬           */
   PUBDB007             INTEGER,                                   /*�����             */
   PUBDB008             DATE,                                      /*�������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBDB primary key (PUBDB_ID)
);
create unique index AK_TB_PUBDB on TB_PUBDB (PUBDB001);
create sequence SEQ_TB_PUBDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBDB to public;
grant index  on TB_PUBDB to public;
grant update on TB_PUBDB to public; 
grant delete on TB_PUBDB to public;  
grant insert on TB_PUBDB to public; 
grant select on SEQ_TB_PUBDB to public;   