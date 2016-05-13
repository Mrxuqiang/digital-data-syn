/*
================================================================================
��ṹ����:TB_PMTIF
��ṹ����:������ȯ����̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIF;
drop index AK_TB_PMTIF;
drop table TB_PMTIF;
create table TB_PMTIF  (
   PMTIF_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTIF001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTIF002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTIF003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTIF004             NUMBER(12,2) ,                             /*�������          */
   PMTIF005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTIF primary key (PMTIF_ID)
);
create unique index AK_TB_PMTIF on TB_PMTIF (PMTIF001,PMTIF002,PMTIF003);
create sequence SEQ_TB_PMTIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIF to public;
grant index  on TB_PMTIF to public;
grant update on TB_PMTIF to public; 
grant delete on TB_PMTIF to public;  
grant insert on TB_PMTIF to public; 
grant select on SEQ_TB_PMTIF to public;   