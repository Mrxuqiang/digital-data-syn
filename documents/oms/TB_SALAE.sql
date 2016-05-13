/*
================================================================================
��ṹ����:TB_SALAE
��ṹ����:�ͻ�Э�鵥��Ч��֯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALAE;
drop index AK_TB_SALAE;
drop table TB_SALAE;
create table TB_SALAE  (
   SALAE_ID             INTEGER                         not null,  /*�ͻ�Э�鵥��Ч��ΧID*/
   SALAE001             INTEGER                         not null,  /*�ͻ�Э�鵥ID        */
   SALAE002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SALAE primary key (SALAE_ID)
);
create unique index AK_TB_SALAE on TB_SALAE (SALAE001,SALAE002);
create sequence SEQ_TB_SALAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAE to public;
grant index  on TB_SALAE to public;
grant update on TB_SALAE to public; 
grant delete on TB_SALAE to public;  
grant insert on TB_SALAE to public; 
grant select on SEQ_TB_SALAE to public;   