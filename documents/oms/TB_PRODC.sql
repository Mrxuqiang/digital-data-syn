/*
================================================================================
��ṹ����:TB_PRODC
��ṹ����:װ�����뵥�ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRODC;
drop index AK_TB_PRODC;
drop table TB_PRODC;
create table TB_PRODC  (
   PRODC_ID             INTEGER                         not null,  /*װ�����뵥�ӱ�ID    */
   PRODC001             INTEGER                         not null,  /*װ�����뵥ID        */
   PRODC002             INTEGER                         not null,  /*װ����ĿID          */
   PRODC003             DATE,				           /*Ԥ���������        */
   PRODC004             VARCHAR2(100),				   /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PRODC primary key (PRODC_ID)
);
create unique index AK_TB_PRODC on TB_PRODC (PRODC001,PRODC002);
create sequence SEQ_TB_PRODC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRODC to public;
grant index  on TB_PRODC to public;
grant update on TB_PRODC to public; 
grant delete on TB_PRODC to public;  
grant insert on TB_PRODC to public; 
grant select on SEQ_TB_PRODC to public;   