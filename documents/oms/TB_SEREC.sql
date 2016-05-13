/*
================================================================================
��ṹ����:TB_SEREC
��ṹ����:��Ʒ�������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SEREC;
drop index AK_TB_SEREC;
drop table TB_SEREC;
create table TB_SEREC  (
   SEREC_ID             INTEGER                         not null,  /*��Ʒ��ⵥID        */
   SEREC001             INTEGER                         not null,  /*����ID              */
   SEREC002             VARCHAR2(30)                    not null,  /*��ⵥ��            */
   SEREC003             DATE                            not null,  /*��������            */
   SEREC004             INTEGER                         not null,  /*Ӫ����֯ID          */
   SEREC005             INTEGER                         not null,  /*��ⲿ��ID          */
   SEREC006             INTEGER                         not null,  /*�����ԱID          */
   SEREC007             DATE                            not null,  /*�������            */
   SEREC008             VARCHAR2(255),                             /*��ע                */
   SEREC009             INTEGER,                                   /*¼����ID            */
   SEREC010             DATE,                                      /*¼������            */
   SEREC011             INTEGER,                                   /*�����ID            */
   SEREC012             DATE,                                      /*�������            */
   SEREC013             VARCHAR2(1)                     not null,  /*���״̬            */
   SEREC014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   SEREC015             VARCHAR2(30),                              /*ǩ�˵���            */
   SEREC016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SEREC primary key (SEREC_ID)
);
create unique index AK_TB_SEREC on TB_SEREC (SEREC002,SEREC004);
create sequence SEQ_TB_SEREC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREC to public;
grant index  on TB_SEREC to public;
grant update on TB_SEREC to public; 
grant delete on TB_SEREC to public;  
grant insert on TB_SEREC to public; 
grant select on SEQ_TB_SEREC to public;   