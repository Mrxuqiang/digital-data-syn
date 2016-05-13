/*
================================================================================
��ṹ����:TB_MEMAB
��ṹ����:��Ա�ȼ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAB;
drop index AK_TB_MEMAB;
drop table TB_MEMAB;
create table TB_MEMAB  (
   MEMAB_ID             INTEGER                         not null,  /*��Ա�ȼ�ID         */
   MEMAB001             VARCHAR2(4)                     not null,  /*��Ա�ȼ�����       */
   MEMAB002             VARCHAR2(30)                    not null,  /*��Ա�ȼ�����       */
   MEMAB003             NUMBER(12)                      not null,  /*��������           */
   MEMAB004             NUMBER(12)                      not null,  /*��������           */
   MEMAB005             VARCHAR2(60),                              /*˵��               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAB primary key (MEMAB_ID)
);
create unique index AK_TB_MEMAB on TB_MEMAB (MEMAB001);
create sequence SEQ_TB_MEMAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAB to public;
grant index  on TB_MEMAB to public;
grant update on TB_MEMAB to public; 
grant delete on TB_MEMAB to public;  
grant insert on TB_MEMAB to public; 
grant select on SEQ_TB_MEMAB to public;   