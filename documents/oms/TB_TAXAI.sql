/*
================================================================================
��ṹ����:TB_TAXAI
��ṹ����:��˰���ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_TAXAI;
drop index AK_TB_TAXAI;
drop table TB_TAXAI;
create table TB_TAXAI  (
   TAXAI_ID             INTEGER                         not null,  /*��˰����ϸID      */
   TAXAI001             INTEGER                         not null,  /*��˰��ID          */
   TAXAI002             INTEGER                         not null,  /*˰Ʊ��ID          */
   TAXAI003             INTEGER                         not null,  /*̯λID            */
   TAXAI004             INTEGER                         not null,  /*��ͬID            */
   TAXAI005             INTEGER                         not null,  /*����ID            */
   TAXAI006             NUMBER(12,2)                    not null,  /*��Ʊ���          */
   TAXAI007             NUMBER(12,2)                    not null,  /*ʵ��Ʊ���        */
   TAXAI008             NUMBER(12,2)                    not null,  /*����Ʊ���        */
   TAXAI009             NUMBER(12,2)                    not null,  /*����˰��(%)       */
   TAXAI010             NUMBER(12,2)                    not null,  /*Ӧ��˰���        */
   TAXAI011             NUMBER(12,2)                    not null,  /*ʵ��˰���        */
   TAXAI012             VARCHAR2(1),                               /*�ѽ�              */
   TAXAI013             INTEGER,                                   /*���õ�ID          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_TAXAI primary key (TAXAI_ID)
);
create unique index AK_TB_TAXAI on TB_TAXAI (TAXAI001,TAXAI002);
create sequence SEQ_TB_TAXAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAI to public;
grant index  on TB_TAXAI to public;
grant update on TB_TAXAI to public; 
grant delete on TB_TAXAI to public;  
grant insert on TB_TAXAI to public; 
grant select on SEQ_TB_TAXAI to public;   