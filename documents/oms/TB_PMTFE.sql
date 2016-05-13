/*
================================================================================
��ṹ����:TB_PMTFE
��ṹ����:���ȯ����̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTFE;
drop index AK_TB_PMTFE;
drop table TB_PMTFE;
create table TB_PMTFE  (
   PMTFE_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTFE001             INTEGER                         not null,  /*���ȯ��ID      */
   PMTFE002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTFE003             INTEGER,                                   /*��̯����ID        */
   PMTFE004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTFE005             INTEGER,                                   /*��Ӧ��ID          */
   PMTFE006             INTEGER,                                   /*��Ʒ������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTFE primary key (PMTFE_ID)
);
create unique index AK_TB_PMTFE on TB_PMTFE (PMTFE001,PMTFE002,PMTFE003);
create sequence SEQ_TB_PMTFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFE to public;
grant index  on TB_PMTFE to public;
grant update on TB_PMTFE to public; 
grant delete on TB_PMTFE to public;  
grant insert on TB_PMTFE to public; 
grant select on SEQ_TB_PMTFE to public;   