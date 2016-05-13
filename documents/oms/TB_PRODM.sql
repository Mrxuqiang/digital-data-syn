/*
================================================================================
��ṹ����:TB_PRODM
��ṹ����:����֤���ŵ��ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODM;
drop index AK_TB_PRODM;
drop table TB_PRODM;
create table TB_PRODM  (
   PRODM_ID             INTEGER                         not null,  /*����֤���ŵ��ӱ�ID  */
   PRODM001             INTEGER                         not null,  /*����֤���ŵ�ID      */
   PRODM002             INTEGER                         not null,  /*��֤��ID            */
   PRODM003             INTEGER                         not null,  /*��֤����ϸID        */
   PRODM004             VARCHAR2(100),				   /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODM primary key (PRODM_ID)
);
create unique index AK_TB_PRODM on TB_PRODM (PRODM001,PRODM002,PRODM003);
create sequence SEQ_TB_PRODM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODM to public;
grant index  on TB_PRODM to public;
grant update on TB_PRODM to public; 
grant delete on TB_PRODM to public;  
grant insert on TB_PRODM to public; 
grant select on SEQ_TB_PRODM to public;   

