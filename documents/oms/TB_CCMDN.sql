/*
================================================================================
��ṹ����:TB_CCMDN
��ṹ����:Ԥ����ȯ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMDN;
drop index AK_TB_CCMDN;
drop table TB_CCMDN;
create table TB_CCMDN  (
   CCMDN_ID             INTEGER                         not null,  /*Ԥ�浥ID            */
   CCMDN001             INTEGER                         not null,  /*����ID              */
   CCMDN002             VARCHAR2(30)                    not null,  /*Ԥ�浥��            */
   CCMDN003             DATE                            not null,  /*��������            */
   CCMDN004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMDN005             INTEGER                         not null,  /*ҵ����ID          */
   CCMDN006             INTEGER                         not null,  /*ҵ����ԱID          */
   CCMDN007             VARCHAR2(30),                              /*�ͻ�����            */
   CCMDN008             VARCHAR2(30),				   /*��ϵ�绰            */
   CCMDN009             VARCHAR2(80),				   /*��ϵ��ַ            */
   CCMDN010             INTEGER,				   /*С��ID              */
   CCMDN011             VARCHAR2(255),                             /*��ע                */
   CCMDN012             INTEGER,                                   /*¼����ID            */
   CCMDN013             DATE,                                      /*¼������            */
   CCMDN014             INTEGER,                                   /*�����ID            */
   CCMDN015             DATE,                                      /*�������            */
   CCMDN016             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMDN017             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMDN018             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMDN019             VARCHAR2(1),                               /*ǩ����              */
   CCMDN020             VARCHAR2(30),                              /*��������            */
   CCMDN021             INTEGER,                                   /*����ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                 /*����״̬            */
   constraint PK_TB_CCMDN primary key (CCMDN_ID)
);
create unique index AK_TB_CCMDN on TB_CCMDN (CCMDN002,CCMDN004);
create sequence SEQ_TB_CCMDN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDN to public;
grant index  on TB_CCMDN to public;
grant update on TB_CCMDN to public; 
grant delete on TB_CCMDN to public;  
grant insert on TB_CCMDN to public; 
grant select on SEQ_TB_CCMDN to public;   