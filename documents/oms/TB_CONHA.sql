/*
================================================================================
��ṹ����:TB_CONHA
��ṹ����:Э�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONHA;
drop index AK_TB_CONHA;
drop table TB_CONHA;
create table TB_CONHA  (
   CONHA_ID             INTEGER                         not null,  /*Э�������ID        */
   CONHA001             INTEGER                         not null,  /*����                */
   CONHA002             VARCHAR2(16)                    not null,  /*��������            */
   CONHA003             DATE                            not null,  /*��������            */
   CONHA004             INTEGER                         not null,  /*Э��ID              */
   CONHA005             NUMBER(5)                       not null,  /*Э��汾��          */
   CONHA006             VARCHAR2(1)                     not null,  /*Э������            */
   CONHA007             INTEGER                         not null,  /*��ͬID              */
   CONHA008             INTEGER                         not null,  /*��Ӧ��ID            */
   CONHA009             INTEGER                         not null,  /*ǩԼӪ����֯ID      */
   CONHA010             VARCHAR2(1)                     not null,  /*��Ӫ��ʽ            */
   CONHA011             VARCHAR2(1)                     not null,  /*״̬                */
   CONHA012             VARCHAR2(255),                             /*��ע                */
   CONHA013             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONHA014             VARCHAR2(30),                              /*ǩ�˵���            */
   CONHA015             VARCHAR2(1),                               /*ǩ����              */
   CONHA016             INTEGER,                                   /*¼����ID            */
   CONHA017             DATE,                                      /*¼������            */
   CONHA018             INTEGER,                                   /*�����ID            */
   CONHA019             DATE,                                      /*�������            */
   CONHA020             INTEGER,                                   /*Ĭ��˰��            */  //modi by 20091020
   CONHA021             NUMBER(12,2),                              /*˰��                */  //modi by 20091020   
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONHA primary key (CONHA_ID)
);
create unique index AK_TB_CONHA on TB_CONHA (CONHA002);
create sequence SEQ_TB_CONHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONHA to public;
grant index  on TB_CONHA to public;
grant update on TB_CONHA to public; 
grant delete on TB_CONHA to public;  
grant insert on TB_CONHA to public; 
grant select on SEQ_TB_CONHA to public;   