/*
================================================================================
��ṹ����:TB_SALEB
��ṹ����:�ս����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALEB;
drop index AK_TB_SALEB;
drop table TB_SALEB;
create table TB_SALEB  (
   SALEB_ID             INTEGER                         not null,  /*�ս���������ID        */
   SALEB001             INTEGER                         not null,  /*Ӫ����֯ID            */
   SALEB002             DATE                            not null,  /*��������              */
   SALEB003             VARCHAR2(1)                     not null,  /*��������              */
   SALEB004             INTEGER                         not null,  /*����ԱID              */
   SALEB005             INTEGER                         not null,  /*����ID                */
   SALEB006             NUMBER(12,2)                    not null,  /*������              */
   SALEB007             NUMBER(12,2),                              /*�����ѽ��            */
   SALEB008             NUMBER(12,2),                              /*���ս��              */
   SALEB009             VARCHAR2(30),                              /*�ο�����һ            */
   SALEB010             VARCHAR2(30),                              /*�ο����Ŷ�            */
   SALEB011             VARCHAR2(30),                              /*�ο�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_SALEB primary key (SALEB_ID)
);
create unique index AK_TB_SALEB on TB_SALEB (SALEB001,SALEB002,SALEB003,SALEB004,SALEB005);
create sequence SEQ_TB_SALEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEB to public;
grant index  on TB_SALEB to public;
grant update on TB_SALEB to public; 
grant delete on TB_SALEB to public;  
grant insert on TB_SALEB to public; 
grant select on SEQ_TB_SALEB to public;   