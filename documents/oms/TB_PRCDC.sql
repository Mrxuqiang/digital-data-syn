/*
================================================================================
��ṹ����:TB_PRCDC
��ṹ����:���ʵ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCDC;
drop index AK_TB_PRCDC;
drop table TB_PRCDC;
create table TB_PRCDC  (
   PRCDC_ID             INTEGER                       not null,    /*���ʵ���ID           */ 
   PRCDC001             INTEGER                       not null,    /*���ʵ�������         */ 
   PRCDC002             VARCHAR2(30)                  not null,    /*���ʵ�������         */ 
   PRCDC003             DATE,                                      /*������ʼ����         */ 
   PRCDC004             DATE,                                      /*������������         */ 
   PRCDC005             INTEGER                       not null,    /*������֯             */ 
   PRCDC006             INTEGER                       not null,    /*����ԭ��             */ 
   PRCDC007             INTEGER,                                   /*��Ӧ��               */ 
   PRCDC008             VARCHAR2(1)                   not null,    /*������ʽ             */ 
   PRCDC009             VARCHAR2(30),                              /*���۵���             */ 
   PRCDC010             INTEGER,                                   /*��Ʒ                 */ 
   PRCDC011             VARCHAR2(255),                             /*��ע                 */ 
   PRCDC012             VARCHAR2(1),                               /*���״̬             */ 
   PRCDC013             INTEGER,                                   /*¼����               */ 
   PRCDC014             DATE,                                      /*¼��ʱ��             */ 
   PRCDC015             INTEGER,                                   /*�����               */ 
   PRCDC016             DATE,                                      /*���ʱ��             */ 
   PRCDC017             INTEGER,                                   /*��Դ����ID           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա               */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����           */                               
   CREATE_DATE          DATE,                                      /*��������               */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա               */
   MODI_DATE            DATE,                                      /*�޸�����               */
   FLAG                 NUMBER(1),                                 /*����״̬               */
   constraint PK_TB_PRCDC primary key (PRCDC_ID)
);
create unique index AK_TB_PRCDC on TB_PRCDC (PRCDC001,PRCDC002);
create sequence SEQ_TB_PRCDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDC to public;
grant index  on TB_PRCDC to public;
grant update on TB_PRCDC to public; 
grant delete on TB_PRCDC to public;  
grant insert on TB_PRCDC to public; 
grant select on SEQ_TB_PRCDC to public;   