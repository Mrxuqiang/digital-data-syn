/*
================================================================================
��ṹ����:TB_PMTGE
��ṹ����:�ۼƷ�ȯ����̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGE;
drop index AK_TB_PMTGE;
drop table TB_PMTGE;
create table TB_PMTGE  (
   PMTGE_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTGE001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGE002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTGE003             INTEGER,                                   /*��̯����ID        */
   PMTGE004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTGE005             INTEGER,                                   /*��Ӧ��ID          */
   PMTGE006             INTEGER,                                   /*��Ʒ������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGE primary key (PMTGE_ID)
);
create unique index AK_TB_PMTGE on TB_PMTGE (PMTGE001,PMTGE002,PMTGE003);
create sequence SEQ_TB_PMTGE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGE to public;
grant index  on TB_PMTGE to public;
grant update on TB_PMTGE to public; 
grant delete on TB_PMTGE to public;  
grant insert on TB_PMTGE to public; 
grant select on SEQ_TB_PMTGE to public;   