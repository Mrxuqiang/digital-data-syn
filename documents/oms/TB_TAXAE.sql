/*
================================================================================
��ṹ����:TB_TAXAE
��ṹ����:��Ʊ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAE;
drop index AK_TB_TAXAE;
drop table TB_TAXAE;
create table TB_TAXAE  (
   TAXAE_ID             INTEGER                         not null,  /*��Ʊ��ID          */
   TAXAE001             INTEGER                         not null,  /*����ID            */
   TAXAE002             VARCHAR2(30)                    not null,  /*��Ʊ����          */
   TAXAE003             DATE                            not null,  /*��������          */
   TAXAE004             INTEGER                         not null,  /*��˾ID            */
   TAXAE005             INTEGER                         not null,  /*Ӫ����֯ID        */
   TAXAE006             DATE                            not null,  /*��Ʊ����          */
   TAXAE007             INTEGER                         not null,  /*˰Ʊ��ID          */
   TAXAE008             INTEGER                         not null,  /*̯λID            */
   TAXAE009             INTEGER                         not null,  /*��ͬID            */
   TAXAE010             INTEGER                         not null,  /*�̻�ID            */
   TAXAE011             INTEGER                         not null,  /*��Ʊ����ID        */
   TAXAE012             NUMBER(12)                      not null,  /*��Ʊ����          */
   TAXAE013             NUMBER(12,2)                    not null,  /*��Ʊ���          */
   TAXAE014             INTEGER                         not null,  /*ҵ����ID        */
   TAXAE015             INTEGER                         not null,  /*ҵ����ԱID        */
   TAXAE016             VARCHAR2(255),                             /*��ע              */
   TAXAE017             VARCHAR2(1),                               /*����Ʊ            */
   TAXAE018             DATE,                                      /*��Ʊ����          */
   TAXAE019             INTEGER,                                   /*¼����ID          */
   TAXAE020             DATE,                                      /*¼������          */
   TAXAE021             INTEGER,                                   /*�����ID          */
   TAXAE022             DATE,                                      /*�������          */
   TAXAE023             VARCHAR2(1)                     not null,  /*���״̬          */
   TAXAE024             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   TAXAE025             VARCHAR2(30),                              /*ǩ�˵���          */
   TAXAE026             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAE primary key (TAXAE_ID)
);
create unique index AK_TB_TAXAE on TB_TAXAE (TAXAE002,TAXAE005);
create sequence SEQ_TB_TAXAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAE to public;
grant index  on TB_TAXAE to public;
grant update on TB_TAXAE to public; 
grant delete on TB_TAXAE to public;  
grant insert on TB_TAXAE to public; 
grant select on SEQ_TB_TAXAE to public;   