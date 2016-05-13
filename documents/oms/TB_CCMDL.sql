/*
================================================================================
��ṹ����:TB_CCMDL
��ṹ����:ȯ���ϵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDL;
drop index AK_TB_CCMDL;
drop table TB_CCMDL;
create table TB_CCMDL  (
   CCMDL_ID             INTEGER                         not null,  /*ȯ���ϵ�ID          */
   CCMDL001             INTEGER                         not null,  /*����ID              */
   CCMDL002             VARCHAR2(30)                    not null,  /*���ϵ���            */
   CCMDL003             DATE                            not null,  /*��������            */
   CCMDL004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMDL005             INTEGER                         not null,  /*ҵ����ID          */
   CCMDL006             INTEGER                         not null,  /*ҵ����ԱID          */
   CCMDL007             DATE                            not null,  /*��������            */
   CCMDL008             VARCHAR2(255),                             /*��ע                */
   CCMDL009             INTEGER,                                   /*¼����ID            */
   CCMDL010             DATE,                                      /*¼������            */
   CCMDL011             INTEGER,                                   /*�����ID            */
   CCMDL012             DATE,                                      /*�������            */
   CCMDL013             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMDL014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMDL015             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMDL016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDL primary key (CCMDL_ID)
);
create unique index AK_TB_CCMDL on TB_CCMDL (CCMDL002,CCMDL004);
create sequence SEQ_TB_CCMDL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDL to public;
grant index  on TB_CCMDL to public;
grant update on TB_CCMDL to public; 
grant delete on TB_CCMDL to public;  
grant insert on TB_CCMDL to public; 
grant select on SEQ_TB_CCMDL to public;   