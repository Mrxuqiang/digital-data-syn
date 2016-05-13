/*
================================================================================
��ṹ����:TB_CONBO
��ṹ����:��ͬ�ʵ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBO;
drop index AK_TB_CONBO;
drop table TB_CONBO;
create table TB_CONBO  (
   CONBO_ID             INTEGER                         not null,  /*��ͬ�ʵ�ID          */
   CONBO001             INTEGER                         not null,  /*��ͬID              */
   CONBO002             VARCHAR2(1)                     not null,  /*��������            */
   CONBO003             INTEGER                         not null,  /*����ID              */
   CONBO004             DATE                            not null,  /*��������            */
   CONBO005             DATE                            not null,  /*�ʵ�����            */
   CONBO006             DATE                            not null,  /*�ʵ�ֹ��            */
   CONBO007             NUMBER(12,2)                    not null,  /*���ý��            */
   CONBO008             NUMBER(12,2)                    not null,  /*�Żݽ��            */
   CONBO009             NUMBER(12,2)                    not null,  /*Ԥ�����            */
   CONBO010             NUMBER(12,2)                    not null,  /*ʵ�ʷ��ý��        */
   CONBO011             INTEGER,                                   /*���õ�ID            */
   CONBO012             DATE,                                      /*��������            */
   CONBO013             VARCHAR2(1),                               /*�ѽ�                */
   CONBO014             NUMBER(12,2)                            ,  /*��׼����            */
   CONBO015             NUMBER(12,2)                            ,  /*���ñ�׼            */
   CONBO016             NUMBER(12,2),                              /*�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   RESERVED             INTEGER,                                   /*�����ֶ�            */  
   constraint PK_TB_CONBO primary key (CONBO_ID)
);
create unique index AK_TB_CONBO on TB_CONBO (CONBO001,CONBO003,CONBO005);
create sequence SEQ_TB_CONBO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBO to public;
grant index  on TB_CONBO to public;
grant update on TB_CONBO to public; 
grant delete on TB_CONBO to public;  
grant insert on TB_CONBO to public; 
grant select on SEQ_TB_CONBO to public;   