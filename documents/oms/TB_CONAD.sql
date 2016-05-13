/*
================================================================================
��ṹ����:TB_CONAD
��ṹ����:���۱��ױ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAD;
drop index AK_TB_CONAD;
drop table TB_CONAD;
create table TB_CONAD  (
   CONAD_ID             INTEGER                         not null,  /*���۱���ID          */
   CONAD001             INTEGER                         not null,  /*��˾ID              */
   CONAD002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONAD003             INTEGER                         not null,  /*̯λID              */
   CONAD004             DATE                            not null,  /*��ʼ����            */
   CONAD005             DATE                            not null,  /*��������            */
   CONAD006             NUMBER(12,4)                    not null,  /*���۱��׽��        */
   CONAD007             VARCHAR2(255),                             /*��ע                */
   CONAD008             INTEGER,                                   /*¼����              */
   CONAD009             DATE,                                      /*¼������            */
   CONAD010             INTEGER,                                   /*�޸���              */
   CONAD011             DATE,                                      /*�޸�����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONAD primary key (CONAD_ID)
);
create unique index AK_TB_CONAD on TB_CONAD (CONAD003,CONAD004);
create sequence SEQ_TB_CONAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAD to public;
grant index  on TB_CONAD to public;
grant update on TB_CONAD to public; 
grant delete on TB_CONAD to public;  
grant insert on TB_CONAD to public; 
grant select on SEQ_TB_CONAD to public;   