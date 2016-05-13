/*
================================================================================
��ṹ����:TB_RECBA
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_RECBA;
drop index AK_TB_RECBA;
drop table TB_RECBA;
create table TB_RECBA  (
   RECBA_ID             INTEGER                         not null,  /*��������ID              */
   RECBA001             VARCHAR2(4)                    not null,   /*������              */
   RECBA002             INTEGER                         not null,  /*��˾ID              */
   RECBA003             DATE  ,                                    /*��������              */
   RECBA004             NUMBER(16,2),                              /*������                */
   RECBA005             NUMBER(16,2),                              /*�������              */
   RECBA006             NUMBER(16,2),                              /*��ĩ���              */
   RECBA007             VARCHAR2(1)                     not null,  /*����ƾ֤              */
   RECBA008             VARCHAR2(1)                     not null,  /*����                  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_RECBA primary key (RECBA_ID)
);
create unique index AK_TB_RECBA on TB_RECBA (RECBA001,RECBA002);
create sequence SEQ_TB_RECBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECBA to public;
grant index  on TB_RECBA to public;
grant update on TB_RECBA to public; 
grant delete on TB_RECBA to public;  
grant insert on TB_RECBA to public; 
grant select on SEQ_TB_RECBA to public;   