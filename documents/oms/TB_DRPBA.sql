/*
================================================================================
��ṹ����:TB_DRPBA
��ṹ����:����ƾ֤����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPBA;
drop index AK_TB_DRPBA;
drop table TB_DRPBA;
create table TB_DRPBA  (
   DRPBA_ID             INTEGER                         not null,  /* ����ƾ֤��ID       */
   DRPBA001             VARCHAR2(10)                    not null,  /* ����               */
   DRPBA002             VARCHAR2(30)                    not null,  /* ����               */
   DRPBA003             DATE,                                      /* �Ƶ�����           */    
   DRPBA004             VARCHAR2(1),                               /* ƾ֤����           */
   DRPBA005             INTEGER,                                   /* ������˾ID         */  
   DRPBA006             INTEGER,                                   /* �Ƶ���ID           */             
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPBA primary key (DRPBA_ID)
);
create unique index AK_TB_DRPBA on TB_DRPBA (DRPBA001,DRPBA004);
create sequence SEQ_TB_DRPBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBA to public;
grant index  on TB_DRPBA to public;
grant update on TB_DRPBA to public; 
grant delete on TB_DRPBA to public;  
grant insert on TB_DRPBA to public; 
grant select on SEQ_TB_DRPBA to public;   