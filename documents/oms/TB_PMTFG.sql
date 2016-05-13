/*
================================================================================
��ṹ����:TB_PMTFG
��ṹ����:���ȯ����Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFG;
drop index AK_TB_PMTFG;
drop table TB_PMTFG;
create table TB_PMTFG  (
   PMTFG_ID             INTEGER                         not null,  /*���ȯ��Чʱ��ID*/
   PMTFG001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTFG002             DATE                            not null,  /*��ʼ����          */
   PMTFG003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTFG004             DATE                            not null,  /*��������          */
   PMTFG005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFG primary key (PMTFG_ID)
);
create unique index AK_TB_PMTFG on TB_PMTFG (PMTFG001,PMTFG002,PMTFG003);
create sequence SEQ_TB_PMTFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFG to public;
grant index  on TB_PMTFG to public;
grant update on TB_PMTFG to public; 
grant delete on TB_PMTFG to public;  
grant insert on TB_PMTFG to public; 
grant select on SEQ_TB_PMTFG to public;   