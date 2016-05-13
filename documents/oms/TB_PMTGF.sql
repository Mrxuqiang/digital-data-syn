/*
================================================================================
��ṹ����:TB_PMTGF
��ṹ����:�ۼƷ�ȯ����̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGF;
drop index AK_TB_PMTGF;
drop table TB_PMTGF;
create table TB_PMTGF  (
   PMTGF_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTGF001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGF002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTGF003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTGF004             NUMBER(12,2) ,                             /*�������          */
   PMTGF005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGF primary key (PMTGF_ID)
);
create unique index AK_TB_PMTGF on TB_PMTGF (PMTGF001,PMTGF002,PMTGF003);
create sequence SEQ_TB_PMTGF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGF to public;
grant index  on TB_PMTGF to public;
grant update on TB_PMTGF to public; 
grant delete on TB_PMTGF to public;  
grant insert on TB_PMTGF to public; 
grant select on SEQ_TB_PMTGF to public;   