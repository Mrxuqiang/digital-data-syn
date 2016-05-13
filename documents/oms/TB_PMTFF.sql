/*
================================================================================
��ṹ����:TB_PMTFF
��ṹ����:���ȯ����̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFF;
drop index AK_TB_PMTFF;
drop table TB_PMTFF;
create table TB_PMTFF  (
   PMTFF_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTFF001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTFF002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTFF003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTFF004             NUMBER(12,2) ,                             /*�������          */
   PMTFF005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFF primary key (PMTFF_ID)
);
create unique index AK_TB_PMTFF on TB_PMTFF (PMTFF001,PMTFF002,PMTFF003);
create sequence SEQ_TB_PMTFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFF to public;
grant index  on TB_PMTFF to public;
grant update on TB_PMTFF to public; 
grant delete on TB_PMTFF to public;  
grant insert on TB_PMTFF to public; 
grant select on SEQ_TB_PMTFF to public;   