/*
================================================================================
��ṹ����:TB_PMTIE
��ṹ����:������ȯ����̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIE;
drop index AK_TB_PMTIE;
drop table TB_PMTIE;
create table TB_PMTIE  (
   PMTIE_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTIE001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTIE002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTIE003             INTEGER,                                   /*��̯����ID        */
   PMTIE004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTIE005             INTEGER,                                   /*��Ӧ��ID          */
   PMTIE006             INTEGER,                                   /*��Ʒ������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTIE primary key (PMTIE_ID)
);
create unique index AK_TB_PMTIE on TB_PMTIE (PMTIE001,PMTIE002,PMTIE003);
create sequence SEQ_TB_PMTIE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIE to public;
grant index  on TB_PMTIE to public;
grant update on TB_PMTIE to public; 
grant delete on TB_PMTIE to public;  
grant insert on TB_PMTIE to public; 
grant select on SEQ_TB_PMTIE to public;   