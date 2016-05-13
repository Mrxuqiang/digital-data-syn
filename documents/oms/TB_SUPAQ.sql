/*
================================================================================
��ṹ����:TB_SUPAQ
��ṹ����:Ԥ��Э�鵥����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAQ;
drop index AK_TB_SUPAQ;
drop table TB_SUPAQ;
create table TB_SUPAQ  (
   SUPAQ_ID             INTEGER                         not null,  /*Ԥ��Э�鵥ID        */
   SUPAQ001             INTEGER                         not null,  /*����                */
   SUPAQ002             VARCHAR2(30)                    not null,  /*Ԥ�ⵥ��            */
   SUPAQ003             DATE                            not null,  /*��������            */
   SUPAQ004             INTEGER                         not null,  /*��˾ID              */
   SUPAQ005             INTEGER                         not null,  /*Ӫ����֯ID          */
   SUPAQ006             INTEGER                         not null,  /*�̻�ID              */
   SUPAQ007             INTEGER,                                   /*̯λID              */
   SUPAQ008             DATE                            not null,  /*ǩ������            */
   SUPAQ009             INTEGER                         not null,  /*ҵ����ID          */
   SUPAQ010             INTEGER                         not null,  /*ҵ����ԱID          */
   SUPAQ011             VARCHAR2(30)                    not null,  /*ǩԼ��              */
   SUPAQ012             NUMBER(12,2)                    not null,  /*Ԥ�ս��            */
   SUPAQ013             INTEGER,                                   /*���õ�ID            */
   SUPAQ014             VARCHAR2(500),                             /*Э������            */
   SUPAQ015             INTEGER                         not null,  /*������ID            */
   SUPAQ016             INTEGER,                                   /*¼��ID              */
   SUPAQ017             DATE,                                      /*¼������            */
   SUPAQ018             INTEGER,                                   /*���ID              */
   SUPAQ019             DATE,                                      /*�������            */
   SUPAQ020             VARCHAR2(1)                     not null,  /*���״̬            */
   SUPAQ021             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SUPAQ022             VARCHAR2(30),                              /*ǩ�˵���            */
   SUPAQ023             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAQ primary key (SUPAQ_ID)
);
create unique index AK_TB_SUPAQ on TB_SUPAQ (SUPAQ002,SUPAQ005);
create sequence SEQ_TB_SUPAQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAQ to public;
grant index  on TB_SUPAQ to public;
grant update on TB_SUPAQ to public; 
grant delete on TB_SUPAQ to public;  
grant insert on TB_SUPAQ to public; 
grant select on SEQ_TB_SUPAQ to public;   