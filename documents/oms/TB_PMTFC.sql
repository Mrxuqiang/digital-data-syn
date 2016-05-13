/*
================================================================================
��ṹ����:TB_PMTFC
��ṹ����:���ȯ���������α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFC;
drop index AK_TB_PMTFC;
drop table TB_PMTFC;
create table TB_PMTFC  (
   PMTFC_ID             INTEGER                         not null,  /*��������ID        */
   PMTFC001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTFC002             INTEGER                         not null,  /*ȯ����ID          */
   PMTFC003             VARCHAR2(2)                     not null,  /*ȡ������          */
   PMTFC004             NUMBER(12,2),                              /*�������          */
   PMTFC005             NUMBER(12,2),                              /*�������          */
   PMTFC006             NUMBER(12,2),                              /*��ʼ���          */
   PMTFC007             NUMBER(12,2),                              /*�������          */
   PMTFC008             NUMBER(12,2),                              /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFC primary key (PMTFC_ID)
);
create unique index AK_TB_PMTFC on TB_PMTFC (PMTFC001,PMTFC002,PMTFC004,PMTFC006);
create sequence SEQ_TB_PMTFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFC to public;
grant index  on TB_PMTFC to public;
grant update on TB_PMTFC to public; 
grant delete on TB_PMTFC to public;  
grant insert on TB_PMTFC to public; 
grant select on SEQ_TB_PMTFC to public;   