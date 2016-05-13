/*
================================================================================
��ṹ����:TB_TAXAH
��ṹ����:��˰����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAH;
drop index AK_TB_TAXAH;
drop table TB_TAXAH;
create table TB_TAXAH  (
   TAXAH_ID             INTEGER                         not null,  /*��˰��ID          */
   TAXAH001             INTEGER                         not null,  /*����ID            */
   TAXAH002             VARCHAR2(30)                    not null,  /*��˰����          */
   TAXAH003             DATE                            not null,  /*��������          */
   TAXAH004             INTEGER                         not null,  /*��˾ID            */
   TAXAH005             INTEGER                         not null,  /*Ӫ����֯ID        */
   TAXAH006             DATE                            not null,  /*ͳ�ƽ�ֹ����      */
   TAXAH007             INTEGER                         not null,  /*��˰������        */
   TAXAH008             INTEGER                         not null,  /*ҵ����ID        */
   TAXAH009             INTEGER                         not null,  /*ҵ����ԱID        */
   TAXAH010             VARCHAR2(255),                             /*��ע              */
   TAXAH011             INTEGER,                                   /*¼����ID          */
   TAXAH012             DATE,                                      /*¼������          */
   TAXAH013             INTEGER,                                   /*�����ID          */
   TAXAH014             DATE,                                      /*�������          */
   TAXAH015             VARCHAR2(1)                     not null,  /*���״̬          */
   TAXAH016             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   TAXAH017             VARCHAR2(30),                              /*ǩ�˵���          */
   TAXAH018             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAH primary key (TAXAH_ID)
);
create unique index AK_TB_TAXAH on TB_TAXAH (TAXAH002,TAXAH005);
create sequence SEQ_TB_TAXAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAH to public;
grant index  on TB_TAXAH to public;
grant update on TB_TAXAH to public; 
grant delete on TB_TAXAH to public;  
grant insert on TB_TAXAH to public; 
grant select on SEQ_TB_TAXAH to public;   