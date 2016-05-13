/*
================================================================================
��ṹ����:TB_CCMDH
��ṹ����:ȯ���õ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDH;
drop index AK_TB_CCMDH;
drop table TB_CCMDH;
create table TB_CCMDH  (
   CCMDH_ID             INTEGER                         not null,  /*ȯ���õ�ID          */
   CCMDH001             INTEGER                         not null,  /*����ID              */
   CCMDH002             VARCHAR2(30)                    not null,  /*���õ���            */
   CCMDH003             DATE                            not null,  /*��������            */
   CCMDH004             DATE                            not null,  /*��������            */
   CCMDH005             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMDH006             INTEGER                         not null,  /*���ò���ID          */
   CCMDH007             INTEGER                         not null,  /*������ԱID          */
   CCMDH008             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMDH009             INTEGER                         not null,  /*���ⲿ��ID          */
   CCMDH010             INTEGER                         not null,  /*������ԱID          */
   CCMDH011             VARCHAR2(255),                             /*��ע                */
   CCMDH012             INTEGER,                                   /*¼����ID            */
   CCMDH013             DATE,                                      /*¼������            */
   CCMDH014             INTEGER,                                   /*�����ID            */
   CCMDH015             DATE,                                      /*�������            */
   CCMDH016             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMDH017             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMDH018             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMDH019             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDH primary key (CCMDH_ID)
);
create unique index AK_TB_CCMDH on TB_CCMDH (CCMDH002,CCMDH005);
create sequence SEQ_TB_CCMDH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDH to public;
grant index  on TB_CCMDH to public;
grant update on TB_CCMDH to public; 
grant delete on TB_CCMDH to public;  
grant insert on TB_CCMDH to public; 
grant select on SEQ_TB_CCMDH to public;   