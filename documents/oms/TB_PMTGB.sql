/*
================================================================================
��ṹ����:TB_PMTGB
��ṹ����:�ۼƷ�ȯ��������Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGB;
drop index AK_TB_PMTGB;
drop table TB_PMTGB;
create table TB_PMTGB  (
   PMTGB_ID             INTEGER                         not null,  /*������ƷID        */
   PMTGB001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGB002             VARCHAR2(1)                     not null,  /*��������          */
   PMTGB003             INTEGER,                                   /*����ID            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGB primary key (PMTGB_ID)
);
create unique index AK_TB_PMTGB on TB_PMTGB (PMTGB001,PMTGB002,PMTGB003);
create sequence SEQ_TB_PMTGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGB to public;
grant index  on TB_PMTGB to public;
grant update on TB_PMTGB to public; 
grant delete on TB_PMTGB to public;  
grant insert on TB_PMTGB to public; 
grant select on SEQ_TB_PMTGB to public;   