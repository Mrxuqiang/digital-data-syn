/*
================================================================================
��ṹ����:TB_GRTAD
��ṹ����:������������  
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAD;
drop index AK_TB_GRTAD;
drop table TB_GRTAD;
create table TB_GRTAD  (
   GRTAD_ID             INTEGER                         not null,  /*����������ID          */
   GRTAD001             VARCHAR2(10)                    not null,  /*��������              */   
   GRTAD002             VARCHAR2(30)                    not null,  /*��������              */
   GRTAD003             INTEGER                         not null,  /*������˾ID            */
   GRTAD004             VARCHAR2(255),                             /*��ע                  */             
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAD primary key (GRTAD_ID)
);
create unique index AK_TB_GRTAD on TB_GRTAD (GRTAD001);
create sequence SEQ_TB_GRTAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAD to public;
grant index  on TB_GRTAD to public;
grant update on TB_GRTAD to public; 
grant delete on TB_GRTAD to public;  
grant insert on TB_GRTAD to public; 
grant select on SEQ_TB_GRTAD to public;   