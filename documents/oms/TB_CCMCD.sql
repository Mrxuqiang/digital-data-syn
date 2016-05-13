/*
================================================================================
��ṹ����:TB_CCMCD
��ṹ����:���ѿ���ֵ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCD;
drop index AK_TB_CCMCD;
drop table TB_CCMCD;
create table TB_CCMCD  (
   CCMCD_ID             INTEGER                         not null,  /*���ѿ���ֵ��ID      */
   CCMCD001             INTEGER                         not null,  /*����ID              */
   CCMCD002             VARCHAR2(30)                    not null,  /*��ֵ����            */
   CCMCD003             DATE                            not null,  /*��������            */
   CCMCD004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMCD005             INTEGER                         not null,  /*��ֵ����ID          */
   CCMCD006             INTEGER                         not null,  /*��ֵ��ԱID          */
   CCMCD007             DATE                            not null,  /*��ֵ����            */
   CCMCD008             VARCHAR2(255),                             /*��ע                */
   CCMCD009             NUMBER(30)                      not null,  /*���ѿ���            */
   CCMCD010             NUMBER(12,2)                    not null,  /*���ѿ����          */
   CCMCD011             NUMBER(12,2)                    not null,  /*��ֵ���            */
   CCMCD012             NUMBER(12,2)                    not null,  /*�ۿ۽��            */
   CCMCD013             NUMBER(12,2)                    not null,  /*Ӧ������          */
   CCMCD014             NUMBER(12,2)                    not null,  /*ʵ������          */
   CCMCD015             INTEGER,                                   /*¼����ID            */
   CCMCD016             DATE,                                      /*¼������            */
   CCMCD017             INTEGER,                                   /*�����ID            */
   CCMCD018             DATE,                                      /*�������            */
   CCMCD019             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMCD020             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMCD021             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMCD022             VARCHAR2(1),                               /*ǩ����              */
   CCMCD023             INTEGER,                                   /*����ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCD primary key (CCMCD_ID)
);
create unique index AK_TB_CCMCD on TB_CCMCD (CCMCD002);
create sequence SEQ_TB_CCMCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCD to public;
grant index  on TB_CCMCD to public;
grant update on TB_CCMCD to public; 
grant delete on TB_CCMCD to public;  
grant insert on TB_CCMCD to public; 
grant select on SEQ_TB_CCMCD to public;   