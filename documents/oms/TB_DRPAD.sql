/*
================================================================================
��ṹ����:TB_DRPAD
��ṹ����:������������  
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPAD;
drop index AK_TB_DRPAD;
drop table TB_DRPAD;
create table TB_DRPAD  (
   DRPAD_ID             INTEGER                         not null,  /*����������ID          */
   DRPAD001             VARCHAR2(10)                    not null,  /*��������              */   
   DRPAD002             VARCHAR2(30)                    not null,  /*��������              */
   DRPAD003             INTEGER                         not null,  /*������˾ID            */
   DRPAD004             VARCHAR2(255),                             /*��ע                  */             
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPAD primary key (DRPAD_ID)
);
create unique index AK_TB_DRPAD on TB_DRPAD (DRPAD001);
create sequence SEQ_TB_DRPAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAD to public;
grant index  on TB_DRPAD to public;
grant update on TB_DRPAD to public; 
grant delete on TB_DRPAD to public;  
grant insert on TB_DRPAD to public; 
grant select on SEQ_TB_DRPAD to public;   