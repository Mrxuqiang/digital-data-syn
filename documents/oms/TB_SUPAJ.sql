/*
================================================================================
��ṹ����:TB_SUPAJ
��ṹ����:�̻��������ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAJ;
drop index AK_TB_SUPAJ;
drop table TB_SUPAJ;
create table TB_SUPAJ  (
   SUPAJ_ID             INTEGER                         not null,  /*�Ǽ�֤��ID          */
   SUPAJ001             INTEGER                         not null,  /*�Ǽ�ID              */
   SUPAJ002             INTEGER                         not null,  /*֤������ID          */
   SUPAJ003             VARCHAR2(40)                    not null,  /*֤������            */
   SUPAJ004             VARCHAR2(30)                    not null,  /*��֤��              */
   SUPAJ005             DATE,                                      /*��Ч������          */
   SUPAJ006             DATE,                                      /*��Ч��ֹ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAJ primary key (SUPAJ_ID)
);
create unique index AK_TB_SUPAJ on TB_SUPAJ (SUPAJ001,SUPAJ002,SUPAJ003);
create sequence SEQ_TB_SUPAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAJ to public;
grant index  on TB_SUPAJ to public;
grant update on TB_SUPAJ to public; 
grant delete on TB_SUPAJ to public;  
grant insert on TB_SUPAJ to public; 
grant select on SEQ_TB_SUPAJ to public;   