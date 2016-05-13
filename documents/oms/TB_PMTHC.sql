/*
================================================================================
��ṹ����:TB_PMTHC
��ṹ����:�ۼ���Ʒ���������α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHC;
drop index AK_TB_PMTHC;
drop table TB_PMTHC;
create table TB_PMTHC  (
   PMTHC_ID             INTEGER                         not null,  /*��������ID        */
   PMTHC001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHC002             NUMBER(12,2),                              /*��ʼ���          */
   PMTHC003             NUMBER(12,2),                              /*�������          */
   PMTHC004             INTEGER                         not null,  /*��ƷID            */
   PMTHC005             INTEGER,                                   /*��λID            */
   PMTHC006             NUMBER(12,2),                              /*����              */
   PMTHC007             NUMBER(18,3),                              /*����              */
   PMTHC008             NUMBER(12,2),                              /*���              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHC primary key (PMTHC_ID)
);
create unique index AK_TB_PMTHC on TB_PMTHC (PMTHC001,PMTHC002,PMTHC004);
create sequence SEQ_TB_PMTHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHC to public;
grant index  on TB_PMTHC to public;
grant update on TB_PMTHC to public; 
grant delete on TB_PMTHC to public;  
grant insert on TB_PMTHC to public; 
grant select on SEQ_TB_PMTHC to public;   