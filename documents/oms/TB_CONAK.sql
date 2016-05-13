/*
================================================================================
��ṹ����:TB_CONAK
��ṹ����:��ͬ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONAK;
drop index AK_TB_CONAK;
drop table TB_CONAK;
create table TB_CONAK  (
   CONAK_ID             INTEGER                         not null,  /*��ͬ��������ID      */
   CONAK001             VARCHAR2(4)                     not null,  /*������            */
   CONAK002             VARCHAR2(60)                    not null,  /*��������            */
   CONAK003             VARCHAR2(4),				   /*˰������            */
   CONAK004             VARCHAR2(20),                              /*˰����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER,                                    /*����״̬            */
   constraint PK_TB_CONAK primary key (CONAK_ID)
);
create unique index AK_TB_CONAK on TB_CONAK (CONAK001);
create sequence SEQ_TB_CONAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAK to public;
grant index  on TB_CONAK to public;
grant update on TB_CONAK to public; 
grant delete on TB_CONAK to public;  
grant insert on TB_CONAK to public; 
grant select on SEQ_TB_CONAK to public;   