/*
================================================================================
��ṹ����:TB_CRMLOG
��ṹ����:CRM�ӿ���־��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CRMLOG;
drop table TB_CRMLOG;
create table TB_CRMLOG  (
   CRMLOG_ID             INTEGER                         not null,  /*��־ID             */
   CRMLOG001             VARCHAR2(50)                     not null, /*������             */
   CRMLOG002             VARCHAR2(50)                    not null,  /*�ӿ�����           */
   CRMLOG003             INTEGER                         not null,  /*��������           */
   CRMLOG004             VARCHAR2(100)                          ,   /*������Ϣ           */
   CRMLOG005             VARCHAR2(4000)                         ,   /*����������������|�ָ� */
   CRMLOG006             VARCHAR2(1000)                         ,   /*Ԥ���ֶ�1          */
   CRMLOG007             VARCHAR2(1000)                         ,   /*Ԥ���ֶ�2          */
   CRMLOG008             VARCHAR2(1000)                         ,   /*Ԥ���ֶ�3          */
   CRMLOG009             VARCHAR2(1000)                         ,   /*Ԥ���ֶ�4          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_CRMLOG primary key (CRMLOG_ID)
);
create sequence SEQ_TB_CRMLOG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CRMLOG to public;
grant index  on TB_CRMLOG to public;
grant update on TB_CRMLOG to public; 
grant delete on TB_CRMLOG to public;  
grant insert on TB_CRMLOG to public; 
grant select on SEQ_TB_CRMLOG to public;   