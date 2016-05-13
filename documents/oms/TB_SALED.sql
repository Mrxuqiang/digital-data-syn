/*
================================================================================
��ṹ����:TB_SALED
��ṹ����:�ս�̯λ��Ʒ���۱�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALED;
drop index AK_TB_SALED;
drop table TB_SALED;
create table TB_SALED  (
   SALED_ID             INTEGER                         not null,  /*�ս�̯λ����ID        */
   SALED001             INTEGER                         not null,  /*Ӫ����֯ID            */
   SALED002             DATE                            not null,  /*��������              */
   SALED003             VARCHAR2(1)                     not null,  /*��������              */
   SALED004             INTEGER                         not null,  /*��ͬ��ID              */
   SALED005             INTEGER                         not null,  /*��ƷID                */
   SALED006             INTEGER                         not null,  /*��ƷƷ��ID            */
   SALED007             NUMBER(12,2)                    not null,  /*���۽��              */
   SALED008             INTEGER                         not null,  /*̯λID                */
   SALED009             INTEGER                         not null,  /*��Ʒ��ID              */
   SALED010             INTEGER                         not null,  /*�̻�ID                */
   SALED011             INTEGER                         not null,  /*¥��ID                */
   SALED012             INTEGER                         not null,  /*¥��ID                */
   SALED013             INTEGER                         not null,  /*��Ӫ����ID            */
   SALED014             INTEGER                         not null,  /*��Ӫ����ID            */
   SALED015             INTEGER                         not null,  /*��ӪС��ID            */
   SALED016             VARCHAR2(30),                              /*�ο�����һ            */
   SALED017             VARCHAR2(30),                              /*�ο����Ŷ�            */
   SALED018             VARCHAR2(30),                              /*�ο�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_SALED primary key (SALED_ID)
);
create unique index AK_TB_SALED on TB_SALED (SALED001,SALED002,SALED003,SALED004,SALED005);
create sequence SEQ_TB_SALED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALED to public;
grant index  on TB_SALED to public;
grant update on TB_SALED to public; 
grant delete on TB_SALED to public;  
grant insert on TB_SALED to public; 
grant select on SEQ_TB_SALED to public;   