/*
================================================================================
��ṹ����:TB_PMTHH
��ṹ����:�ۼ���Ʒ����Ч��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHH;
drop index AK_TB_PMTHH;
drop table TB_PMTHH;
create table TB_PMTHH  (
   PMTHH_ID             INTEGER                         not null,  /*�ۼ���Ʒ��Ч��ΧID*/
   PMTHH001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHH002             INTEGER                         not null,  /*Ӫ����֯ID        */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHH primary key (PMTHH_ID)
);
create unique index AK_TB_PMTHH on TB_PMTHH (PMTHH001,PMTHH002);
create sequence SEQ_TB_PMTHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHH to public;
grant index  on TB_PMTHH to public;
grant update on TB_PMTHH to public; 
grant delete on TB_PMTHH to public;  
grant insert on TB_PMTHH to public; 
grant select on SEQ_TB_PMTHH to public;   