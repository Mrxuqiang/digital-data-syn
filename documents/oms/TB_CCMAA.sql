/*
================================================================================
��ṹ����:TB_CCMAA
��ṹ����:���ֱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMAA;
drop index AK_TB_CCMAA;
drop table TB_CCMAA;
create table TB_CCMAA  (
   CCMAA_ID             INTEGER                         not null,  /*����ID              */
   CCMAA001             VARCHAR2(4)                     not null,  /*���ֱ��            */
   CCMAA002             VARCHAR2(30)                    not null,  /*��������            */
   CCMAA003             VARCHAR2(1),                               /*��Ա��              */
   CCMAA004             VARCHAR2(1),                               /*���ѿ�              */
   CCMAA005             VARCHAR2(1),                               /*����ȯ��            */
   CCMAA006             INTEGER,                                   /*��Ա������          */
   CCMAA007             VARCHAR2(255),                             /*��ע                */
   CCMAA008             INTEGER,                                   /*¼����ID            */
   CCMAA009             DATE,                                      /*¼������            */
   CCMAA010             INTEGER,                                   /*�����ID            */
   CCMAA011             DATE,                                      /*�������            */
   CCMAA012             VARCHAR2(1),                               /*���״̬            */
   CCMAA013             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMAA014             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMAA015             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMAA primary key (CCMAA_ID)
);
create unique index AK_TB_CCMAA on TB_CCMAA (CCMAA001);
create sequence SEQ_TB_CCMAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMAA to public;
grant index  on TB_CCMAA to public;
grant update on TB_CCMAA to public; 
grant delete on TB_CCMAA to public;  
grant insert on TB_CCMAA to public; 
grant select on SEQ_TB_CCMAA to public;   