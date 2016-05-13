/*
================================================================================
��ṹ����:TB_PMTGD
��ṹ����:�ۼƷ�ȯ������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGD;
drop index AK_TB_PMTGD;
drop table TB_PMTGD;
create table TB_PMTGD  (
   PMTGD_ID             INTEGER                         not null,  /*��ȯ���������ID  */
   PMTGD001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGD002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTGD003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGD primary key (PMTGD_ID)
);
create unique index AK_TB_PMTGD on TB_PMTGD (PMTGD001,PMTGD002,PMTGD003);
create sequence SEQ_TB_PMTGD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGD to public;
grant index  on TB_PMTGD to public;
grant update on TB_PMTGD to public; 
grant delete on TB_PMTGD to public;  
grant insert on TB_PMTGD to public; 
grant select on SEQ_TB_PMTGD to public;   