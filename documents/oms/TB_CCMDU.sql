/*
================================================================================
��ṹ����:TB_CCMDU
��ṹ����:Ԥ����ȯ�˻ص�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDU;
drop index AK_TB_CCMDU;
drop table TB_CCMDU;
create table TB_CCMDU  (
   CCMDU_ID             INTEGER                         not null,  /*�˻ص�ID            */
   CCMDU001             INTEGER                         not null,  /*����ID              */
   CCMDU002             VARCHAR2(30)                    not null,  /*�˻ص���            */
   CCMDU003             DATE                            not null,  /*��������            */
   CCMDU004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMDU005             INTEGER                         not null,  /*ҵ����ID          */
   CCMDU006             INTEGER                         not null,  /*ҵ����ԱID          */
   CCMDU007             VARCHAR2(30),                              /*�ͻ�����            */
   CCMDU008             VARCHAR2(30),				   /*��ϵ�绰            */
   CCMDU009             VARCHAR2(80),				   /*��ϵ��ַ            */
   CCMDU010             INTEGER,				   /*С��ID              */
   CCMDU011             VARCHAR2(255),                             /*��ע                */
   CCMDU012             INTEGER,                                   /*¼����ID            */
   CCMDU013             DATE,                                      /*¼������            */
   CCMDU014             INTEGER,                                   /*�����ID            */
   CCMDU015             DATE,                                      /*�������            */
   CCMDU016             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMDU017             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMDU018             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMDU019             VARCHAR2(1),                               /*ǩ����              */
   CCMDU020             VARCHAR2(30),                              /*��������            */
   CCMDU021             INTEGER,                                   /*����ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CCMDU primary key (CCMDU_ID)
);
create unique index AK_TB_CCMDU on TB_CCMDU (CCMDU002,CCMDU004);
create sequence SEQ_TB_CCMDU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDU to public;
grant index  on TB_CCMDU to public;
grant update on TB_CCMDU to public; 
grant delete on TB_CCMDU to public;  
grant insert on TB_CCMDU to public; 
grant select on SEQ_TB_CCMDU to public;   