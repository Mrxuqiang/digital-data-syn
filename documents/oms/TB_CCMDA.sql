/*
================================================================================
��ṹ����:TB_CCMDA
��ṹ����:ȯ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDA;
drop index AK_TB_CCMDA;
drop table TB_CCMDA;
create table TB_CCMDA  (
   CCMDA_ID             INTEGER                         not null,  /*ȯ����ID            */
   CCMDA001             VARCHAR2(4)                     not null,  /*ȯ�������          */
   CCMDA002             VARCHAR2(30)                    not null,  /*ȯ��������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDA primary key (CCMDA_ID)
);
create unique index AK_TB_CCMDA on TB_CCMDA (CCMDA001);
create sequence SEQ_TB_CCMDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDA to public;
grant index  on TB_CCMDA to public;
grant update on TB_CCMDA to public; 
grant delete on TB_CCMDA to public;  
grant insert on TB_CCMDA to public; 
grant select on SEQ_TB_CCMDA to public;   