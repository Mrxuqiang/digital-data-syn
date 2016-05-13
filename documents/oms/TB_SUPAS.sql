/*
================================================================================
��ṹ����:TB_SUPAS
��ṹ����:ս��Э�鵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAS;
drop index AK_TB_SUPAS;
drop table TB_SUPAS;
create table TB_SUPAS  (
   SUPAS_ID             INTEGER                         not null,  /*ս��Э�鵥�ӱ�ID    */
   SUPAS001             INTEGER                         not null,  /*ս��Э�鵥ID        */
   SUPAS002             INTEGER                         not null,  /*Ʒ��ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAS primary key (SUPAS_ID)
);
create unique index AK_TB_SUPAS on TB_SUPAS (SUPAS001,SUPAS002);
create sequence SEQ_TB_SUPAS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAS to public;
grant index  on TB_SUPAS to public;
grant update on TB_SUPAS to public; 
grant delete on TB_SUPAS to public;  
grant insert on TB_SUPAS to public; 
grant select on SEQ_TB_SUPAS to public;   