/*
================================================================================
��ṹ����:TB_PMTHF
��ṹ����:�ۼ���Ʒ����̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHF;
drop index AK_TB_PMTHF;
drop table TB_PMTHF;
create table TB_PMTHF  (
   PMTHF_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTHF001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHF002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTHF003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTHF004             NUMBER(12,2) ,                             /*�������          */
   PMTHF005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHF primary key (PMTHF_ID)
);
create unique index AK_TB_PMTHF on TB_PMTHF (PMTHF001,PMTHF002,PMTHF003);
create sequence SEQ_TB_PMTHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHF to public;
grant index  on TB_PMTHF to public;
grant update on TB_PMTHF to public; 
grant delete on TB_PMTHF to public;  
grant insert on TB_PMTHF to public; 
grant select on SEQ_TB_PMTHF to public;   