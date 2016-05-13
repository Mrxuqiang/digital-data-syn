/*
================================================================================
��ṹ����:TB_CCMDI
��ṹ����:ȯ���õ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDI;
drop index AK_TB_CCMDI;
drop table TB_CCMDI;
create table TB_CCMDI  (
   CCMDI_ID             INTEGER                         not null,  /*ȯ���õ���ϸID      */
   CCMDI001             INTEGER                         not null,  /*ȯ���õ�ID          */
   CCMDI002             INTEGER                         not null,  /*ȯ��ID              */
   CCMDI003             INTEGER                         not null,  /*ȯ���ID            */
   CCMDI004             NUMBER(12,2)                    not null,  /*ȯ�����          */
   CCMDI005             NUMBER(30)                      not null,  /*��ʼ����            */
   CCMDI006             NUMBER(30)                      not null,  /*��������            */
   CCMDI007             NUMBER(12)                      not null,  /*����                */
   CCMDI008             NUMBER(12,2)                    not null,  /*ȯ���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDI primary key (CCMDI_ID)
);
create unique index AK_TB_CCMDI on TB_CCMDI (CCMDI001,CCMDI002,CCMDI003);
create sequence SEQ_TB_CCMDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDI to public;
grant index  on TB_CCMDI to public;
grant update on TB_CCMDI to public; 
grant delete on TB_CCMDI to public;  
grant insert on TB_CCMDI to public; 
grant select on SEQ_TB_CCMDI to public;   