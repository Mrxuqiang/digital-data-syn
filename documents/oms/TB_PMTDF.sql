/*
================================================================================
��ṹ����:TB_PMTDF
��ṹ����:��Ʒ��������Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDF;
drop index AK_TB_PMTDF;
drop table TB_PMTDF;
create table TB_PMTDF  (
   PMTDF_ID             INTEGER                         not null,  /*������Чʱ��ID    */
   PMTDF001             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDF002             DATE                            not null,  /*��ʼ����          */
   PMTDF003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTDF004             DATE                            not null,  /*��������          */
   PMTDF005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDF primary key (PMTDF_ID)
);
create unique index AK_TB_PMTDF on TB_PMTDF (PMTDF001,PMTDF002,PMTDF003);
create sequence SEQ_TB_PMTDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDF to public;
grant index  on TB_PMTDF to public;
grant update on TB_PMTDF to public; 
grant delete on TB_PMTDF to public;  
grant insert on TB_PMTDF to public; 
grant select on SEQ_TB_PMTDF to public;   