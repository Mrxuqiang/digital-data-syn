/*
================================================================================
��ṹ����:TB_SERAS
��ṹ����:����ƾ֤״̬��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAS;
drop index AK_TB_SERAS;
drop table TB_SERAS;
create table TB_SERAS  (
   SERAS_ID             INTEGER                         not null,  /*����ƾ֤ID          */
   SERAS001             INTEGER                         not null,  /*ƾ֤����ID          */
   SERAS002             NUMBER(12)                      not null,  /*ƾ֤����            */
   SERAS003             VARCHAR2(1)                     not null,  /*ƾ֤״̬�� 1�����  2������ 3��ʹ��  4������ */
   SERAS004             INTEGER,                                   /*̯λID              */
   SERAS005             INTEGER,                                   /*��ͬID              */
   SERAS006             INTEGER,                                   /*����ID              */
   SERAS007             INTEGER,                                   /*Ӫ����֯ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SERAS primary key (SERAS_ID)
);
create unique index AK_TB_SERAS on TB_SERAS (SERAS001,SERAS002,SERAS007);
create sequence SEQ_TB_SERAS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAS to public;
grant index  on TB_SERAS to public;
grant update on TB_SERAS to public; 
grant delete on TB_SERAS to public;  
grant insert on TB_SERAS to public; 
grant select on SEQ_TB_SERAS to public;   