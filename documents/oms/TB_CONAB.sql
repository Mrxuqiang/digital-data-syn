/*
================================================================================
��ṹ����:TB_CONAB
��ṹ����:���ñ�����׼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAB;
drop index AK_TB_CONAB;
drop table TB_CONAB;
create table TB_CONAB  (
   CONAB_ID             INTEGER                         not null,  /*���ñ�����׼ID      */
   CONAB001             INTEGER                         not null,  /*��˾ID              */
   CONAB002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONAB003             INTEGER                         not null,  /*����ID              */
   CONAB004             INTEGER                         not null,  /*̯λID              */
   CONAB005             DATE                            not null,  /*��ʼ����            */
   CONAB006             DATE                            not null,  /*��������            */
   CONAB007             VARCHAR2(255),                             /*��ע                */
   CONAB008             INTEGER,                                   /*¼����              */
   CONAB009             DATE,                                      /*¼������            */
   CONAB010             INTEGER,                                   /*�޸���              */
   CONAB011             DATE,                                      /*�޸�����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONAB primary key (CONAB_ID)
);
create unique index AK_TB_CONAB on TB_CONAB (CONAB003,CONAB004,CONAB005);
create sequence SEQ_TB_CONAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAB to public;
grant index  on TB_CONAB to public;
grant update on TB_CONAB to public; 
grant delete on TB_CONAB to public;  
grant insert on TB_CONAB to public; 
grant select on SEQ_TB_CONAB to public;   