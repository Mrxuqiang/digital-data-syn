/*
================================================================================
��ṹ����:TB_CCMDC
��ṹ����:ȯ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDC;
drop index AK_TB_CCMDC;
drop table TB_CCMDC;
create table TB_CCMDC  (
   CCMDC_ID             INTEGER                         not null,  /*ȯ���ID            */
   CCMDC001             VARCHAR2(4)                     not null,  /*ȯ������          */
   CCMDC002             VARCHAR2(30)                    not null,  /*ȯ�������          */
   CCMDC003             NUMBER(12,2)                    not null,  /*ȯ�����          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDC primary key (CCMDC_ID)
);
create unique index AK_TB_CCMDC on TB_CCMDC (CCMDC001);
create sequence SEQ_TB_CCMDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDC to public;
grant index  on TB_CCMDC to public;
grant update on TB_CCMDC to public; 
grant delete on TB_CCMDC to public;  
grant insert on TB_CCMDC to public; 
grant select on SEQ_TB_CCMDC to public;   