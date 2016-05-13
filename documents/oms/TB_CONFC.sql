/*
================================================================================
��ṹ����:TB_CONFC
��ṹ����:��Ӧ�̺�ͬ�����Ӫ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONFC;
drop index AK_TB_CONFC;
drop table TB_CONFC;
create table TB_CONFC  (
   CONFC_ID             INTEGER                         not null,  /*��ͬ��Ӫ������ID  */
   CONFC001             INTEGER                         not null,  /*��ͬ���ID          */
   CONFC002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONFC003             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONFC primary key (CONFC_ID)
);
create unique index AK_TB_CONFC on TB_CONFC (CONFC001,CONFC002);
create sequence SEQ_TB_CONFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFC to public;
grant index  on TB_CONFC to public;
grant update on TB_CONFC to public; 
grant delete on TB_CONFC to public;  
grant insert on TB_CONFC to public; 
grant select on SEQ_TB_CONFC to public;   