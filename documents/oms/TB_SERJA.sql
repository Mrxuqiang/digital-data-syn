/*
================================================================================
��ṹ����:TB_SERJA
��ṹ����:��ͬ��ǩ�۸�����ת�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SERJA;
drop index AK_TB_SERJA;
drop table TB_SERJA;
create table TB_SERJA  (
   SERJA_ID             INTEGER                         not null,  /*�۸�����ID          */
   SERJA001             INTEGER                         not null,  /*չλID              */
   SERJA002             INTEGER                         not null,  /*�̻�ID              */
   SERJA003             INTEGER                         not null,  /*ϵ��ID              */
   SERJA004             INTEGER                         not null,  /*��ͬID              */
   SERJA005             VARCHAR2(50)                    not null,  /*��ͬ��              */
   SERJA006             VARCHAR2(30)                            ,  /*�۸�����            */
   SERJA007             NUMBER(10,2)                            ,  /*����ۿ�            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 INTEGER,                                   /*����״̬            */
   constraint PK_TB_SERJA primary key (SERJA_ID)
);
create sequence SEQ_TB_SERJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERJA to public;
grant index  on TB_SERJA to public;
grant update on TB_SERJA to public; 
grant delete on TB_SERJA to public;  
grant insert on TB_SERJA to public; 
grant select on SEQ_TB_SERJA to public;   