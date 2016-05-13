/*
================================================================================
��ṹ����:TB_SALEC
��ṹ����:�ս�̯λ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SALEC;
drop index AK_TB_SALEC;
drop table TB_SALEC;
create table TB_SALEC  (
   SALEC_ID             INTEGER                         not null,  /*�ս�̯λ����ID        */
   SALEC001             INTEGER                         not null,  /*Ӫ����֯ID            */
   SALEC002             DATE                            not null,  /*��������              */
   SALEC003             VARCHAR2(1)                     not null,  /*��������              */
   SALEC004             INTEGER                         not null,  /*��ͬ��ID              */
   SALEC005             INTEGER                         not null,  /*����ID                */
   SALEC006             NUMBER(12,2)                    not null,  /*������              */
   SALEC007             NUMBER(12,2),                              /*�����ѽ��            */
   SALEC008             NUMBER(12,2),                              /*���ս��              */
   SALEC009             INTEGER                         not null,  /*̯λID                */
   SALEC010             INTEGER                         not null,  /*��Ʒ��ID              */
   SALEC011             INTEGER                         not null,  /*�̻�ID                */
   SALEC012             INTEGER                         not null,  /*¥��ID                */
   SALEC013             INTEGER                         not null,  /*¥��ID                */
   SALEC014             INTEGER                         not null,  /*��Ӫ����ID            */
   SALEC015             INTEGER                         not null,  /*��Ӫ����ID            */
   SALEC016             INTEGER                         not null,  /*��ӪС��ID            */
   SALEC017             VARCHAR2(30),                              /*�ο�����һ            */
   SALEC018             VARCHAR2(30),                              /*�ο����Ŷ�            */
   SALEC019             VARCHAR2(30),                              /*�ο�������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_SALEC primary key (SALEC_ID)
);
create unique index AK_TB_SALEC on TB_SALEC (SALEC001,SALEC002,SALEC003,SALEC004,SALEC005);
create sequence SEQ_TB_SALEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEC to public;
grant index  on TB_SALEC to public;
grant update on TB_SALEC to public; 
grant delete on TB_SALEC to public;  
grant insert on TB_SALEC to public; 
grant select on SEQ_TB_SALEC to public;   