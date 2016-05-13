/*
================================================================================
��ṹ����:TB_CONGU
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONGU;
drop index AK_TB_CONGU;
drop table TB_CONGU;
create table TB_CONGU  (
   CONGU_ID             INTEGER                         not null,  /*��������ID      */
   CONGU001             INTEGER                         not null,  /*����ID          */
   CONGU002             INTEGER                         not null,  /*�׶�ID              */
   CONGU003             INTEGER                         not null,  /*����ID              */
   CONGU004             DATE                            not null,  /*�������            */
   CONGU005             VARCHAR2(1)                     not null,  /*���״��0.���� 1.����  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONGU primary key (CONGU_ID)
);
create unique index AK_TB_CONGU on TB_CONGU (CONGU001,CONGU002,CONGU003);
create sequence SEQ_TB_CONGU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGU to public;
grant index  on TB_CONGU to public;
grant update on TB_CONGU to public; 
grant delete on TB_CONGU to public;  
grant insert on TB_CONGU to public; 
grant select on SEQ_TB_CONGU to public;   