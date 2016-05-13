/*
================================================================================
��ṹ����:TB_CONED
��ṹ����:��Ӧ�̺�ͬ��ӪƷ�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONED;
drop index AK_TB_CONED;
drop table TB_CONED;
create table TB_CONED  (
   CONED_ID             INTEGER                         not null,  /*��ͬ��ӪƷ��ID      */
   CONED001             INTEGER                         not null,  /*��ͬID              */
   CONED002             INTEGER                         not null,  /*Ʒ��ID              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONED primary key (CONED_ID)
);
create unique index AK_TB_CONED on TB_CONED (CONED001,CONED002);
create sequence SEQ_TB_CONED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONED to public;
grant index  on TB_CONED to public;
grant update on TB_CONED to public; 
grant delete on TB_CONED to public;  
grant insert on TB_CONED to public; 
grant select on SEQ_TB_CONED to public;   