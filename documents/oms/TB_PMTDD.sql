/*
================================================================================
��ṹ����:TB_PMTDD
��ṹ����:��Ʒ��������̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDD;
drop index AK_TB_PMTDD;
drop table TB_PMTDD;
create table TB_PMTDD  (
   PMTDD_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTDD001             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDD002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTDD003             INTEGER,                                   /*��̯����ID        */
   PMTDD004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTDD005             INTEGER,                                   /*��Ӧ��ID          */
   PMTDD006             INTEGER,                                   /*��Ʒ������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDD primary key (PMTDD_ID)
);
create unique index AK_TB_PMTDD on TB_PMTDD (PMTDD001,PMTDD002,PMTDD003);
create sequence SEQ_TB_PMTDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDD to public;
grant index  on TB_PMTDD to public;
grant update on TB_PMTDD to public; 
grant delete on TB_PMTDD to public;  
grant insert on TB_PMTDD to public; 
grant select on SEQ_TB_PMTDD to public;   