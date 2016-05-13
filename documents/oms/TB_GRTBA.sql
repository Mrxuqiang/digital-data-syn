/*
================================================================================
��ṹ����:TB_GRTBA
��ṹ����:����ƾ֤����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTBA;
drop index AK_TB_GRTBA;
drop table TB_GRTBA;
create table TB_GRTBA  (
   GRTBA_ID             INTEGER                         not null,  /*����ƾ֤��ID       */
   GRTBA001             VARCHAR2(10)                    not null,  /*����               */
   GRTBA002             VARCHAR2(30)                    not null,  /*����               */
   GRTBA003             DATE,                                      /*�Ƶ�����           */    
   GRTBA004             VARCHAR2(1),                               /*ƾ֤����           */
   GRTBA005             INTEGER,                                   /*������˾ID         */  
   GRTBA006             INTEGER,                                   /*�Ƶ���ID           */             
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTBA primary key (GRTBA_ID)
);
create unique index AK_TB_GRTBA on TB_GRTBA (GRTBA001,GRTBA004);
create sequence SEQ_TB_GRTBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBA to public;
grant index  on TB_GRTBA to public;
grant update on TB_GRTBA to public; 
grant delete on TB_GRTBA to public;  
grant insert on TB_GRTBA to public; 
grant select on SEQ_TB_GRTBA to public;   