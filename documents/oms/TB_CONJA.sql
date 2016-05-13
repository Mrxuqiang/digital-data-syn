/*
================================================================================
��ṹ����:TB_CONJA
��ṹ����:�Զ��幩Ӧ����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONJA;
drop index AK_TB_CONJA;
drop table TB_CONJA;
create table TB_CONJA  (
   CONJA_ID             INTEGER                      not null,   /*����ID          */     
   CONJA001             VARCHAR2(30)                 not null,   /*�������        */     
   CONJA002             VARCHAR2(30)                 not null,   /*��������        */     
   CONJA003             DATE                         not null,   /*�ƶ�����        */     
   CONJA004             VARCHAR2(1)                  not null,   /*��ʽ����        */     
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONJA primary key (CONJA_ID)
);
create unique index AK_TB_CONJA on TB_CONJA (CONJA001);
create sequence SEQ_TB_CONJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONJA to public;
grant index  on TB_CONJA to public;
grant update on TB_CONJA to public; 
grant delete on TB_CONJA to public;  
grant insert on TB_CONJA to public; 
grant select on SEQ_TB_CONJA to public;   