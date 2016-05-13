/*
================================================================================
��ṹ����:TB_SEREE
��ṹ����:��Ʒ��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREE;
drop index AK_TB_SEREE;
drop table TB_SEREE;
create table TB_SEREE  (
   SEREE_ID             INTEGER                         not null,  /*��Ʒ���õ�ID        */
   SEREE001             INTEGER                         not null,  /*����ID              */
   SEREE002             VARCHAR2(30)                    not null,  /*���õ���            */
   SEREE003             DATE                            not null,  /*��������            */
   SEREE004             INTEGER                         not null,  /*Ӫ����֯ID          */
   SEREE005             INTEGER                         not null,  /*���ò���ID          */
   SEREE006             INTEGER                         not null,  /*������ԱID          */
   SEREE007             DATE                            not null,  /*��������            */
   SEREE008             INTEGER                         not null,  /*���ⲿ��ID          */
   SEREE009             INTEGER                         not null,  /*������ԱID          */
   SEREE010             VARCHAR2(255),                             /*��ע                */
   SEREE011             INTEGER,                                   /*¼����ID            */
   SEREE012             DATE,                                      /*¼������            */
   SEREE013             INTEGER,                                   /*�����ID            */
   SEREE014             DATE,                                      /*�������            */
   SEREE015             VARCHAR2(1)                     not null,  /*���״̬            */
   SEREE016             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SEREE017             VARCHAR2(30),                              /*ǩ�˵���            */
   SEREE018             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SEREE primary key (SEREE_ID)
);
create unique index AK_TB_SEREE on TB_SEREE (SEREE002,SEREE004);
create sequence SEQ_TB_SEREE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREE to public;
grant index  on TB_SEREE to public;
grant update on TB_SEREE to public; 
grant delete on TB_SEREE to public;  
grant insert on TB_SEREE to public; 
grant select on SEQ_TB_SEREE to public;   