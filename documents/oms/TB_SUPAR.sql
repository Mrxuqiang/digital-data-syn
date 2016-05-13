/*
================================================================================
��ṹ����:TB_SUPAR
��ṹ����:ս��Э�鵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAR;
drop index AK_TB_SUPAR;
drop table TB_SUPAR;
create table TB_SUPAR  (
   SUPAR_ID             INTEGER                         not null,  /*ս��Э�鵥ID        */
   SUPAR001             INTEGER                         not null,  /*����                */
   SUPAR002             VARCHAR2(30)                    not null,  /*���ݱ��            */
   SUPAR003             DATE                            not null,  /*��������            */
   SUPAR004             INTEGER                         not null,  /*����ID              */
   SUPAR005             DATE                            not null,  /*ǩ������            */
   SUPAR006             VARCHAR2(1000)                   not null, /*Э������            */
   SUPAR007             VARCHAR2(255),                             /*��ע                */
   SUPAR008             INTEGER,                                   /*¼����ID            */
   SUPAR009             DATE,                                      /*¼������            */
   SUPAR010             INTEGER,                                   /*�����ID            */
   SUPAR011             DATE,                                      /*�������            */
   SUPAR012             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAR013             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SUPAR014             VARCHAR2(30),                              /*ǩ�˵���            */
   SUPAR015             VARCHAR2(1),                               /*ǩ����              */
   SUPAR016             DATE,                                      /*��ֹ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAR primary key (SUPAR_ID)
);
create unique index AK_TB_SUPAR on TB_SUPAR (SUPAR002);
create sequence SEQ_TB_SUPAR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAR to public;
grant index  on TB_SUPAR to public;
grant update on TB_SUPAR to public; 
grant delete on TB_SUPAR to public;  
grant insert on TB_SUPAR to public; 
grant select on SEQ_TB_SUPAR to public;   