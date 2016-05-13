/*
================================================================================
��ṹ����:TB_CONCK
��ṹ����:��ͬ����ʵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCK;
drop index AK_TB_CONCK;
drop table TB_CONCK;
create table TB_CONCK  (
   CONCK_ID             INTEGER                         not null,  /*��ͬ����ʵ�ID      */
   CONCK001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCK002             VARCHAR2(1)                     not null,  /*��������            */
   CONCK003             INTEGER                         not null,  /*����ID              */
   CONCK004             DATE                            not null,  /*��������            */
   CONCK005             DATE                            not null,  /*�ʵ�����            */
   CONCK006             DATE                            not null,  /*�ʵ�ֹ��            */
   CONCK007             NUMBER(12,2)                    not null,  /*���ý��            */
   CONCK008             NUMBER(12,2)                    not null,  /*�Żݽ��            */
   CONCK009             NUMBER(12,2)                    not null,  /*Ԥ�����            */
   CONCK010             NUMBER(12,2)                    not null,  /*ʵ�ʷ��ý��        */
   CONCK011             INTEGER,                                   /*���õ�ID            */
   CONCK012             DATE,                                      /*��������            */
   CONCK013             VARCHAR2(1),                               /*�ѽ�                */
   CONCK014             NUMBER(12,2),                              /*�ʵ�������        */
   CONCK015             INTEGER,                                   /*������õ�ID        */
   CONCK016             NUMBER(12,2),                              /*���ò�����        */
   CONCK017             NUMBER(12,2),                              /*��׼����            */
   CONCK018             NUMBER(12,2),                              /*���ñ�׼            */
   CONCK019             NUMBER(12,2),                              /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */  
   constraint PK_TB_CONCK primary key (CONCK_ID)
);
create unique index AK_TB_CONCK on TB_CONCK (CONCK001,CONCK002,CONCK003,CONCK005);
create sequence SEQ_TB_CONCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCK to public;
grant index  on TB_CONCK to public;
grant update on TB_CONCK to public; 
grant delete on TB_CONCK to public;  
grant insert on TB_CONCK to public; 
grant select on SEQ_TB_CONCK to public;   