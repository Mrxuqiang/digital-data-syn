/*
================================================================================
��ṹ����:TB_PUBFD
��ṹ����:�Զ�������ˮ��¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFD;
drop index AK_TB_PUBFD;
drop table TB_PUBFD;
create table TB_PUBFD  (
   PUBFD_ID             INTEGER                         not null,  /*�Զ�������ˮID      */
   PUBFD001             INTEGER                         not null,  /*Ӫ����֯ID          */
   PUBFD002             INTEGER                         not null,  /*����ID              */
   PUBFD003             VARCHAR2(30)                    not null,  /*��ˮ��              */
   PUBFD004             VARCHAR2(1)                     not null,  /*��������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PUBFD primary key (PUBFD_ID)
);
create unique index AK_TB_PUBFD on TB_PUBFD (PUBFD001,PUBFD002,PUBFD003);
create sequence SEQ_TB_PUBFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFD to public;
grant index  on TB_PUBFD to public;
grant update on TB_PUBFD to public; 
grant delete on TB_PUBFD to public;  
grant insert on TB_PUBFD to public; 
grant select on SEQ_TB_PUBFD to public;   