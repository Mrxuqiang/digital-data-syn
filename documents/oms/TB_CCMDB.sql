/*
================================================================================
��ṹ����:TB_CCMDB
��ṹ����:��ȯ�ȼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDB;
drop index AK_TB_CCMDB;
drop table TB_CCMDB;
create table TB_CCMDB  (
   CCMDB_ID             INTEGER                         not null,  /*��ȯ�ȼ�ID          */
   CCMDB001             VARCHAR2(4)                     not null,  /*��ȯ�ȼ�����        */
   CCMDB002             VARCHAR2(30)                    not null,  /*��ȯ�ȼ�����        */
   CCMDB003             NUMBER(5)                       not null,  /*��ȯ˳���          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDB primary key (CCMDB_ID)
);
create unique index AK_TB_CCMDB on TB_CCMDB (CCMDB001);
create sequence SEQ_TB_CCMDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDB to public;
grant index  on TB_CCMDB to public;
grant update on TB_CCMDB to public; 
grant delete on TB_CCMDB to public;  
grant insert on TB_CCMDB to public; 
grant select on SEQ_TB_CCMDB to public;   