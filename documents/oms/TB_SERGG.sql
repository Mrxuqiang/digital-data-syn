/*
================================================================================
��ṹ����:TB_SERGG
��ṹ����:Ͷ�߷�ʽ
��ṹĿ��:�ֲ���
================================================================================
*/

drop sequence SEQ_TB_SERGG;
drop index AK_TB_SERGG;
drop table TB_SERGG;
create table TB_SERGG  (
   SERGG_ID             INTEGER                         not null,  /*Ͷ�߷�ʽID          */
   SERGG001             VARCHAR2(12)                    not null,  /*Ͷ�߷�ʽ����        */
   SERGG002             VARCHAR2(20)                    not null,  /*Ͷ�߷�ʽ����        */
   SERGG003             VARCHAR2(30)                               /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SERGG primary key (SERGG_ID)
);
create unique index AK_TB_SERGG on TB_SERGG (SERGG_ID);
create sequence SEQ_TB_SERGG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERGG to public;
grant index  on TB_SERGG to public;
grant update on TB_SERGG to public; 
grant delete on TB_SERGG to public;  
grant insert on TB_SERGG to public; 
grant select on SEQ_TB_SERGG to public;   