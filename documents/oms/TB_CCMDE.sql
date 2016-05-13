/*
================================================================================
��ṹ����:TB_CCMDE
��ṹ����:ȯ����Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDE;
drop index AK_TB_CCMDE;
drop table TB_CCMDE;
create table TB_CCMDE  (
   CCMDE_ID             INTEGER                         not null,  /*������Ч��ΧID      */
   CCMDE001             INTEGER                         not null,  /*����ID              */
   CCMDE002             VARCHAR2(1)                     not null,  /*��Χ����            */
   CCMDE003             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMDE004             INTEGER                         not null,  /*̯λID              */
   CCMDE005             INTEGER                         not null,  /*��ӪС��ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDE primary key (CCMDE_ID)
);
create unique index AK_TB_CCMDE on TB_CCMDE (CCMDE001,CCMDE002,CCMDE003,CCMDE004);
create sequence SEQ_TB_CCMDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDE to public;
grant index  on TB_CCMDE to public;
grant update on TB_CCMDE to public; 
grant delete on TB_CCMDE to public;  
grant insert on TB_CCMDE to public; 
grant select on SEQ_TB_CCMDE to public;   