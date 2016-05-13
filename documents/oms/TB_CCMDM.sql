/*
================================================================================
��ṹ����:TB_CCMDM
��ṹ����:ȯ���ϵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDM;
drop index AK_TB_CCMDM;
drop table TB_CCMDM;
create table TB_CCMDM  (
   CCMDM_ID             INTEGER                         not null,  /*ȯ���ϵ���ϸID      */
   CCMDM001             INTEGER                         not null,  /*ȯ���ϵ�ID          */
   CCMDM002             INTEGER                         not null,  /*ȯ��ID              */
   CCMDM003             INTEGER                         not null,  /*ȯ���ID            */
   CCMDM004             NUMBER(12,2)                    not null,  /*ȯ�����          */
   CCMDM005             NUMBER(30)                      not null,  /*��ʼ����            */
   CCMDM006             NUMBER(30)                      not null,  /*��������            */
   CCMDM007             NUMBER(12)                      not null,  /*����                */
   CCMDM008             NUMBER(12,2)                    not null,  /*ȯ���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMDM primary key (CCMDM_ID)
);
create unique index AK_TB_CCMDM on TB_CCMDM (CCMDM001,CCMDM002,CCMDM003,CCMDM005);
create sequence SEQ_TB_CCMDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDM to public;
grant index  on TB_CCMDM to public;
grant update on TB_CCMDM to public; 
grant delete on TB_CCMDM to public;  
grant insert on TB_CCMDM to public; 
grant select on SEQ_TB_CCMDM to public;   