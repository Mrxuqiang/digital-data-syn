/*
================================================================================
��ṹ����:TB_SUPAE
��ṹ����:���̹���ģ���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAE;
drop index AK_TB_SUPAE;
drop table TB_SUPAE;
create table TB_SUPAE  (
   SUPAE_ID             INTEGER                         not null,  /*����ID              */
   SUPAE001             INTEGER                         not null,  /*����ģ��ID          */
   SUPAE002             VARCHAR2(1)                     not null,  /*��������0:���̽׶� 1:���̲��� */
   SUPAE003             VARCHAR2(10)                    not null,  /*���̴���            */
   SUPAE004             VARCHAR2(30)                    not null,  /*��������            */
   SUPAE005             NUMBER(2)                       not null,  /*���                */
   SUPAE006             NUMBER(12,2)                    not null,  /*��ɰٷֱ�(%)       */
   SUPAE007             VARCHAR2(1),                               /*����������          */
   SUPAE008             VARCHAR2(1)                     not null,  /*�ⷢ��ʽ            */
   SUPAE009             NUMBER(12,2),                              /*�Զ��������(����)  */
   ISLASTLEV            VARCHAR2(1),                               /*�Ƿ�ĩ��            */
   LEVNUM               NUMBER(1),                                 /*�㼶                */
   PARCODE              VARCHAR2(40),                              /*��������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAE primary key (SUPAE_ID)
);
create unique index AK_TB_SUPAE on TB_SUPAE (SUPAE001,SUPAE002,SUPAE003);
create sequence SEQ_TB_SUPAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAE to public;
grant index  on TB_SUPAE to public;
grant update on TB_SUPAE to public; 
grant delete on TB_SUPAE to public;  
grant insert on TB_SUPAE to public; 
grant select on SEQ_TB_SUPAE to public;   