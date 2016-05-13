/*
================================================================================
��ṹ����:TB_PMTGG
��ṹ����:�ۼƷ�ȯ����Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGG;
drop index AK_TB_PMTGG;
drop table TB_PMTGG;
create table TB_PMTGG  (
   PMTGG_ID             INTEGER                         not null,  /*�ۼƷ�ȯ��Чʱ��ID*/
   PMTGG001             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGG002             DATE                            not null,  /*��ʼ����          */
   PMTGG003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTGG004             DATE                            not null,  /*��������          */
   PMTGG005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGG primary key (PMTGG_ID)
);
create unique index AK_TB_PMTGG on TB_PMTGG (PMTGG001,PMTGG002,PMTGG003);
create sequence SEQ_TB_PMTGG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGG to public;
grant index  on TB_PMTGG to public;
grant update on TB_PMTGG to public; 
grant delete on TB_PMTGG to public;  
grant insert on TB_PMTGG to public; 
grant select on SEQ_TB_PMTGG to public;   