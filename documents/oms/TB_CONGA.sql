/*
================================================================================
��ṹ����:TB_CONGA
��ṹ����:Ʒ������Э������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONGA;
drop index AK_TB_CONGA;
drop table TB_CONGA;
create table TB_CONGA  (
   CONGA_ID             INTEGER                         not null,  /*Э��ID              */
   CONGA001             VARCHAR2(30)                    not null,  /*Э����            */
   CONGA002             NUMBER(5)                       not null,  /*Э��汾��          */
   CONGA003             VARCHAR2(1)                     not null,  /*Э������            */
   CONGA004             INTEGER                         not null,  /*��ͬID              */
   CONGA005             INTEGER                         not null,  /*��Ӧ��ID            */
   CONGA006             INTEGER                         not null,  /*ǩԼӪ����֯ID      */
   CONGA007             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ            */
   CONGA008             VARCHAR2(1)                     not null,  /*���״̬            */
   CONGA009             DATE,                                      /*��ֹ����            */
   CONGA010             NUMBER(5),                                 /*Ĭ�Ϲ�������        */
   CONGA011             VARCHAR2(255),                             /*��ע                */
   CONGA012             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONGA013             VARCHAR2(30),                              /*ǩ�˵���            */
   CONGA014             VARCHAR2(1),                               /*ǩ����              */
   CONGA015             INTEGER,                                   /*¼����ID            */
   CONGA016             DATE,                                      /*¼������            */
   CONGA017             INTEGER,                                   /*�����ID            */
   CONGA018             DATE,                                      /*�������            */
   CONGA019             VARCHAR2(30),                              /*��ͬ��              */
   CONGA020             INTEGER,                                   /*Ĭ��˰��            */  //modi by 20091020
   CONGA021             NUMBER(12,2),                              /*˰��                */  //modi by 20091020
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONGA primary key (CONGA_ID)
);
create unique index AK_TB_CONGA on TB_CONGA (CONGA001);
create sequence SEQ_TB_CONGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONGA to public;
grant index  on TB_CONGA to public;
grant update on TB_CONGA to public; 
grant delete on TB_CONGA to public;  
grant insert on TB_CONGA to public; 
grant select on SEQ_TB_CONGA to public;   