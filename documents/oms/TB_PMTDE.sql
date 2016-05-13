/*
================================================================================
��ṹ����:TB_PMTDE
��ṹ����:��Ʒ��������̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDE;
drop index AK_TB_PMTDE;
drop table TB_PMTDE;
create table TB_PMTDE  (
   PMTDE_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTDE001             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDE002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTDE003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTDE004             NUMBER(12,2) ,                             /*�������          */
   PMTDE005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDE primary key (PMTDE_ID)
);
create unique index AK_TB_PMTDE on TB_PMTDE (PMTDE001,PMTDE002,PMTDE003);
create sequence SEQ_TB_PMTDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDE to public;
grant index  on TB_PMTDE to public;
grant update on TB_PMTDE to public; 
grant delete on TB_PMTDE to public;  
grant insert on TB_PMTDE to public; 
grant select on SEQ_TB_PMTDE to public;   