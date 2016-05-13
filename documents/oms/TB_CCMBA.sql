/*
================================================================================
��ṹ����:TB_CCMBA
��ṹ����:�׿��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBA;
drop index AK_TB_CCMBA;
drop table TB_CCMBA;
create table TB_CCMBA  (
   CCMBA_ID             INTEGER                         not null,  /*�׿���ⵥID        */
   CCMBA001             INTEGER                         not null,  /*����ID              */
   CCMBA002             VARCHAR2(30)                    not null,  /*��ⵥ��            */
   CCMBA003             DATE                            not null,  /*��������            */
   CCMBA004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMBA005             INTEGER                         not null,  /*ҵ����ID          */
   CCMBA006             INTEGER                         not null,  /*ҵ����ԱID          */
   CCMBA007             DATE                            not null,  /*�������            */
   CCMBA008             VARCHAR2(255),                             /*��ע                */
   CCMBA009             INTEGER,                                   /*¼����ID            */
   CCMBA010             DATE,                                      /*¼������            */
   CCMBA011             INTEGER,                                   /*�����ID            */
   CCMBA012             DATE,                                      /*�������            */
   CCMBA013             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMBA014             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMBA015             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMBA016             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBA primary key (CCMBA_ID)
);
create unique index AK_TB_CCMBA on TB_CCMBA (CCMBA002);
create sequence SEQ_TB_CCMBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBA to public;
grant index  on TB_CCMBA to public;
grant update on TB_CCMBA to public; 
grant delete on TB_CCMBA to public;  
grant insert on TB_CCMBA to public; 
grant select on SEQ_TB_CCMBA to public;   