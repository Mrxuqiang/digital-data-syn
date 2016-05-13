/*
================================================================================
��ṹ����:TB_PMTGC
��ṹ����:�ۼƷ�ȯ���������α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGC;
drop index AK_TB_PMTGC;
drop table TB_PMTGC;
create table TB_PMTGC  (
   PMTGC_ID             INTEGER                         not null,  /*��������ID        */
   PMTGC001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGC002             INTEGER                         not null,  /*ȯ����ID          */
   PMTGC003             VARCHAR2(2)                     not null,  /*ȡ������          */
   PMTGC004             NUMBER(12,2),                              /*�������          */
   PMTGC005             NUMBER(12,2),                              /*�������          */
   PMTGC006             NUMBER(12,2),                              /*��ʼ���          */
   PMTGC007             NUMBER(12,2),                              /*�������          */
   PMTGC008             NUMBER(12,2),                              /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGC primary key (PMTGC_ID)
);
create unique index AK_TB_PMTGC on TB_PMTGC (PMTGC001,PMTGC002,PMTGC004,PMTGC006);
create sequence SEQ_TB_PMTGC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGC to public;
grant index  on TB_PMTGC to public;
grant update on TB_PMTGC to public; 
grant delete on TB_PMTGC to public;  
grant insert on TB_PMTGC to public; 
grant select on SEQ_TB_PMTGC to public;   