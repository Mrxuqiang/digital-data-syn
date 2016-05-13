/*
================================================================================
��ṹ����:TB_CCMDF
��ṹ����:ȯ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDF;
drop index AK_TB_CCMDF;
drop table TB_CCMDF;
create table TB_CCMDF  (
   CCMDF_ID             INTEGER                         not null,  /*ȯ��ⵥID          */
   CCMDF001             INTEGER                         not null,  /*����ID              */
   CCMDF002             VARCHAR2(30)                    not null,  /*��ⵥ��            */
   CCMDF003             DATE                            not null,  /*��������            */
   CCMDF004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMDF005             INTEGER                         not null,  /*ҵ����ID          */
   CCMDF006             INTEGER                         not null,  /*ҵ����ԱID          */
   CCMDF007             DATE                            not null,  /*�������            */
   CCMDF008             VARCHAR2(255),                             /*��ע                */
   CCMDF009             INTEGER,                                   /*¼����ID            */
   CCMDF010             DATE,                                      /*¼������            */
   CCMDF011             INTEGER,                                   /*�����ID            */
   CCMDF012             DATE,                                      /*�������            */
   CCMDF013             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMDF014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMDF015             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMDF016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDF primary key (CCMDF_ID)
);
create unique index AK_TB_CCMDF on TB_CCMDF (CCMDF002,CCMDF004);
create sequence SEQ_TB_CCMDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDF to public;
grant index  on TB_CCMDF to public;
grant update on TB_CCMDF to public; 
grant delete on TB_CCMDF to public;  
grant insert on TB_CCMDF to public; 
grant select on SEQ_TB_CCMDF to public;   