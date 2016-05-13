/*
================================================================================
��ṹ����:TB_SERAB
��ṹ����:����ƾ֤��ⵥ�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERAB;
drop index AK_TB_SERAB;
drop table TB_SERAB;
create table TB_SERAB  (
   SERAB_ID             INTEGER                         not null,  /*����ƾ֤��ⵥ��ϸID*/
   SERAB001             INTEGER                         not null,  /*����ƾ֤��ⵥID    */
   SERAB002             INTEGER                         not null,  /*ƾ֤����ID          */
   SERAB003             NUMBER(12)                      not null,  /*��ʼ����            */
   SERAB004             NUMBER(12)                      not null,  /*��������            */
   SERAB005             NUMBER(12)                      not null,  /*����                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SERAB primary key (SERAB_ID)
);
create unique index AK_TB_SERAB on TB_SERAB (SERAB001,SERAB002,SERAB003);
create sequence SEQ_TB_SERAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAB to public;
grant index  on TB_SERAB to public;
grant update on TB_SERAB to public; 
grant delete on TB_SERAB to public;  
grant insert on TB_SERAB to public; 
grant select on SEQ_TB_SERAB to public;   