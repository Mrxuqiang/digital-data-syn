/*
================================================================================
��ṹ����:TB_PMTUB
��ṹ����:������������ʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTUB;
drop index AK_TB_PMTUB;
drop table TB_PMTUB;
create table TB_PMTUB  (
   PMTUB_ID             INTEGER                         not null,  /*�������ʱ��ID    */
   PMTUB001             INTEGER                         not null,  /*���������ID      */
   PMTUB002             DATE                            not null,  /*��ʼ����          */
   PMTUB003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTUB004             DATE                            not null,  /*��������          */
   PMTUB005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTUB primary key (PMTUB_ID)
);
create unique index AK_TB_PMTUB on TB_PMTUB (PMTUB001,PMTUB002,PMTUB003);
create sequence SEQ_TB_PMTUB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTUB to public;
grant index  on TB_PMTUB to public;
grant update on TB_PMTUB to public; 
grant delete on TB_PMTUB to public;  
grant insert on TB_PMTUB to public; 
grant select on SEQ_TB_PMTUB to public;   