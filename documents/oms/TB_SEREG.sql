/*
================================================================================
��ṹ����:TB_SEREG
��ṹ����:��Ʒ��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREG;
drop index AK_TB_SEREG;
drop table TB_SEREG;
create table TB_SEREG  (
   SEREG_ID             INTEGER                         not null,  /*��Ʒ���ⵥID        */
   SEREG001             INTEGER                         not null,  /*����ID              */
   SEREG002             VARCHAR2(30)                    not null,  /*���ⵥ��            */
   SEREG003             DATE                            not null,  /*��������            */
   SEREG004             INTEGER                         not null,  /*Ӫ����֯ID          */
   SEREG005             INTEGER                         not null,  /*���ⲿ��ID          */
   SEREG006             INTEGER                         not null,  /*������ԱID          */
   SEREG007             DATE                            not null,  /*��������            */
   SEREG008             VARCHAR2(255),                             /*��ע                */
   SEREG009             INTEGER,                                   /*¼����ID            */
   SEREG010             DATE,                                      /*¼������            */
   SEREG011             INTEGER,                                   /*�����ID            */
   SEREG012             DATE,                                      /*�������            */
   SEREG013             VARCHAR2(1)                     not null,  /*���״̬            */
   SEREG014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SEREG015             VARCHAR2(30),                              /*ǩ�˵���            */
   SEREG016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SEREG primary key (SEREG_ID)
);
create unique index AK_TB_SEREG on TB_SEREG (SEREG002,SEREG004);
create sequence SEQ_TB_SEREG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREG to public;
grant index  on TB_SEREG to public;
grant update on TB_SEREG to public; 
grant delete on TB_SEREG to public;  
grant insert on TB_SEREG to public; 
grant select on SEQ_TB_SEREG to public;   