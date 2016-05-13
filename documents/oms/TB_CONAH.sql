/*
================================================================================
��ṹ����:TB_CONAH
��ṹ����:��ͬչ�ʵ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAH;
drop index AK_TB_CONAH;
drop table TB_CONAH;
create table TB_CONAH  (
   CONAH_ID             INTEGER                         not null,  /*չ�ʵ�ID            */
   CONAH001             INTEGER                         not null,  /*����ID              */
   CONAH002             VARCHAR2(30)                    not null,  /*չ�ʵ���            */
   CONAH003             DATE                            not null,  /*��������            */
   CONAH004             VARCHAR2(60)                    not null,  /*չ������            */
   CONAH005             VARCHAR2(255),                             /*��ע                */
   CONAH006             INTEGER,                                   /*¼����ID            */
   CONAH007             DATE,                                      /*¼������            */
   CONAH008             INTEGER,                                   /*�����ID            */
   CONAH009             DATE,                                      /*�������            */
   CONAH010             VARCHAR2(1)                     not null,  /*���״̬            */
   CONAH011             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CONAH012             VARCHAR2(30),                              /*ǩ�˵���            */
   CONAH013             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONAH primary key (CONAH_ID)
);
create unique index AK_TB_CONAH on TB_CONAH (CONAH002);
create sequence SEQ_TB_CONAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAH to public;
grant index  on TB_CONAH to public;
grant update on TB_CONAH to public; 
grant delete on TB_CONAH to public;  
grant insert on TB_CONAH to public; 
grant select on SEQ_TB_CONAH to public;   