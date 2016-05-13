/*
================================================================================
��ṹ����:TB_CONEC
��ṹ����:��Ӧ�̺�ͬ��Ӫ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONEC;
drop index AK_TB_CONEC;
drop table TB_CONEC;
create table TB_CONEC  (
   CONEC_ID             INTEGER                         not null,  /*��ͬ��Ӫ���ID      */
   CONEC001             INTEGER                         not null,  /*��ͬID              */
   CONEC002             INTEGER                         not null,  /*Ӫ����֯ID          */
   CONEC003             NUMBER(12,2)                    not null,  /*��Ӫ���            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONEC primary key (CONEC_ID)
);
create unique index AK_TB_CONEC on TB_CONEC (CONEC001,CONEC002);
create sequence SEQ_TB_CONEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEC to public;
grant index  on TB_CONEC to public;
grant update on TB_CONEC to public; 
grant delete on TB_CONEC to public;  
grant insert on TB_CONEC to public; 
grant select on SEQ_TB_CONEC to public;   