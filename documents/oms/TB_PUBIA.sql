/*
================================================================================
��ṹ����:TB_PUBIA
��ṹ����:��Ӫ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBIA;
drop index AK_TB_PUBIA;
drop table TB_PUBIA;
create table TB_PUBIA  (
   PUBIA_ID             INTEGER                         not null,  /*��Ӫ����ID         */
   PUBIA001             VARCHAR2(10)                    not null,  /*��Ӫ�������       */
   PUBIA002             VARCHAR2(30)                    not null,  /*��Ӫ��������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBIA primary key (PUBIA_ID)
);
create unique index AK_TB_PUBIA on TB_PUBIA (PUBIA001);
create sequence SEQ_TB_PUBIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIA to public;
grant index  on TB_PUBIA to public;
grant update on TB_PUBIA to public; 
grant delete on TB_PUBIA to public;  
grant insert on TB_PUBIA to public; 
grant select on SEQ_TB_PUBIA to public;   