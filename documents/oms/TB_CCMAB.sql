/*
================================================================================
��ṹ����:TB_CCMAB
��ṹ����:������Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMAB;
drop index AK_TB_CCMAB;
drop table TB_CCMAB;
create table TB_CCMAB  (
   CCMAB_ID             INTEGER                         not null,  /*������Ч��ΧID      */
   CCMAB001             INTEGER                         not null,  /*����ID              */
   CCMAB002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMAB primary key (CCMAB_ID)
);
create unique index AK_TB_CCMAB on TB_CCMAB (CCMAB001,CCMAB002);
create sequence SEQ_TB_CCMAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMAB to public;
grant index  on TB_CCMAB to public;
grant update on TB_CCMAB to public; 
grant delete on TB_CCMAB to public;  
grant insert on TB_CCMAB to public; 
grant select on SEQ_TB_CCMAB to public;   