/*
================================================================================
��ṹ����:TB_PMTKD
��ṹ����:�齱�����̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTKD;
drop index AK_TB_PMTKD;
drop table TB_PMTKD;
create table TB_PMTKD  (
   PMTKD_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTKD001             INTEGER                         not null,  /*�齱���ID      */
   PMTKD002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTKD003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTKD004             NUMBER(12,2) ,                             /*�������          */
   PMTKD005             NUMBER(12,2) ,                             /*��̯����(%)       */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTKD primary key (PMTKD_ID)
);
create unique index AK_TB_PMTKD on TB_PMTKD (PMTKD001,PMTKD002,PMTKD003);
create sequence SEQ_TB_PMTKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKD to public;
grant index  on TB_PMTKD to public;
grant update on TB_PMTKD to public; 
grant delete on TB_PMTKD to public;  
grant insert on TB_PMTKD to public; 
grant select on SEQ_TB_PMTKD to public;   