/*
================================================================================
��ṹ����:TB_PRCDA
��ṹ����:���۵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCDA;
drop index AK_TB_PRCDA;
drop table TB_PRCDA;
create table TB_PRCDA  (
   PRCDA_ID             INTEGER                       not null,    /*���۵���ID             */ 
   PRCDA001             INTEGER                       not null,    /*���۵�������           */ 
   PRCDA002             VARCHAR2(30)                  not null,    /*���۵�������           */ 
   PRCDA003             DATE,                                      /*������ʼ����           */ 
   PRCDA004             DATE,                                      /*������������           */ 
   PRCDA005             INTEGER                       not null,    /*������֯               */ 
   PRCDA006             INTEGER                       not null,    /*����ԭ��               */ 
   PRCDA007             INTEGER                                    /*��Ӧ��                 */ 
   PRCDA008             VARCHAR2(1)                                /*��Ӫ��ʽ               */ 
   PRCDA009             VARCHAR2(1)                   not null,    /*������Դ               */ 
   PRCDA010             VARCHAR2(30),                              /*��Դ����               */ 
   PRCDA011             VARCHAR2(1)                   not null,    /*�Ƿ��������           */ 
   PRCDA012             VARCHAR2(255),                             /*��ע                   */ 
   PRCDA013             VARCHAR2(1),                               /*���״̬               */ 
   PRCDA014             INTEGER,                                   /*¼����                 */ 
   PRCDA015             DATE,                                      /*¼��ʱ��               */ 
   PRCDA016             INTEGER,                                   /*�����                 */ 
   PRCDA017             DATE,                                      /*���ʱ��               */
   PRCDA018             INTEGER,                                   /*��Դ����ID             */    
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER(1),                                 /*����״̬               */
   constraint PK_TB_PRCDA primary key (PRCDA_ID)
);
create unique index AK_TB_PRCDA on TB_PRCDA (PRCDA001,PRCDA002);
create sequence SEQ_TB_PRCDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDA to public;
grant index  on TB_PRCDA to public;
grant update on TB_PRCDA to public; 
grant delete on TB_PRCDA to public;  
grant insert on TB_PRCDA to public; 
grant select on SEQ_TB_PRCDA to public;   