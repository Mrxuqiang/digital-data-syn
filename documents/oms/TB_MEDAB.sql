/*
================================================================================
��ṹ����:TB_MEDAB
��ṹ����:ý�弶���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEDAB;
drop index AK_TB_MEDAB;
drop table TB_MEDAB;
create table TB_MEDAB  (
   MEDAB_ID             INTEGER                         not null,  /*ý�弶��ID         */
   MEDAB001             VARCHAR2(4)                     not null,  /*ý�弶�����       */
   MEDAB002             VARCHAR2(30)                    not null,  /*ý�弶������       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEDAB primary key (MEDAB_ID)
);
create unique index AK_TB_MEDAB on TB_MEDAB (MEDAB001);
create sequence SEQ_TB_MEDAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDAB to public;
grant index  on TB_MEDAB to public;
grant update on TB_MEDAB to public; 
grant delete on TB_MEDAB to public;  
grant insert on TB_MEDAB to public; 
grant select on SEQ_TB_MEDAB to public;   