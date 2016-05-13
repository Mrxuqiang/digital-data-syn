/*
================================================================================
��ṹ����:TB_CCMBE
��ṹ����:�׿����˵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBE;
drop index AK_TB_CCMBE;
drop table TB_CCMBE;
create table TB_CCMBE  (
   CCMBE_ID             INTEGER                         not null,  /*�׿����˵�ID        */
   CCMBE001             INTEGER                         not null,  /*����ID              */
   CCMBE002             VARCHAR2(30)                    not null,  /*���˵���            */
   CCMBE003             DATE                            not null,  /*��������            */
   CCMBE004             DATE                            not null,  /*��������            */
   CCMBE005             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMBE006             INTEGER                         not null,  /*���˲���ID          */
   CCMBE007             INTEGER                         not null,  /*������ԱID          */
   CCMBE008             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMBE009             INTEGER                         not null,  /*���ղ���ID          */
   CCMBE010             INTEGER                         not null,  /*������ԱID          */
   CCMBE011             VARCHAR2(255),                             /*��ע                */
   CCMBE012             INTEGER,                                   /*¼����ID            */
   CCMBE013             DATE,                                      /*¼������            */
   CCMBE014             INTEGER,                                   /*�����ID            */
   CCMBE015             DATE,                                      /*�������            */
   CCMBE016             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMBE017             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMBE018             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMBE019             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBE primary key (CCMBE_ID)
);
create unique index AK_TB_CCMBE on TB_CCMBE (CCMBE002);
create sequence SEQ_TB_CCMBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBE to public;
grant index  on TB_CCMBE to public;
grant update on TB_CCMBE to public; 
grant delete on TB_CCMBE to public;  
grant insert on TB_CCMBE to public; 
grant select on SEQ_TB_CCMBE to public;   