/*
================================================================================
��ṹ����:TB_CCMBC
��ṹ����:�׿����õ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMBC;
drop index AK_TB_CCMBC;
drop table TB_CCMBC;
create table TB_CCMBC  (
   CCMBC_ID             INTEGER                         not null,  /*�׿����õ�ID        */
   CCMBC001             INTEGER                         not null,  /*����ID              */
   CCMBC002             VARCHAR2(30)                    not null,  /*���õ���            */
   CCMBC003             DATE                            not null,  /*��������            */
   CCMBC004             DATE                            not null,  /*��������            */
   CCMBC005             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMBC006             INTEGER                         not null,  /*���ò���ID          */
   CCMBC007             INTEGER                         not null,  /*������ԱID          */
   CCMBC008             INTEGER                         not null,  /*����Ӫ����֯ID      */
   CCMBC009             INTEGER                         not null,  /*���ⲿ��ID          */
   CCMBC010             INTEGER                         not null,  /*������ԱID          */
   CCMBC011             VARCHAR2(255),                             /*��ע                */
   CCMBC012             INTEGER,                                   /*¼����ID            */
   CCMBC013             DATE,                                      /*¼������            */
   CCMBC014             INTEGER,                                   /*�����ID            */
   CCMBC015             DATE,                                      /*�������            */
   CCMBC016             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMBC017             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMBC018             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMBC019             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMBC primary key (CCMBC_ID)
);
create unique index AK_TB_CCMBC on TB_CCMBC (CCMBC002);
create sequence SEQ_TB_CCMBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBC to public;
grant index  on TB_CCMBC to public;
grant update on TB_CCMBC to public; 
grant delete on TB_CCMBC to public;  
grant insert on TB_CCMBC to public; 
grant select on SEQ_TB_CCMBC to public;   