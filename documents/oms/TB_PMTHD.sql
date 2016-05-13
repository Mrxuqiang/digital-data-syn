/*
================================================================================
��ṹ����:TB_PMTHD
��ṹ����:�ۼ���Ʒ������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHD;
drop index AK_TB_PMTHD;
drop table TB_PMTHD;
create table TB_PMTHD  (
   PMTHD_ID             INTEGER                         not null,  /*��Ʒ���������ID  */
   PMTHD001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHD002             VARCHAR2(1)                     not null,  /*�������������    */
   PMTHD003             INTEGER,                                   /*���������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHD primary key (PMTHD_ID)
);
create unique index AK_TB_PMTHD on TB_PMTHD (PMTHD001,PMTHD002,PMTHD003);
create sequence SEQ_TB_PMTHD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHD to public;
grant index  on TB_PMTHD to public;
grant update on TB_PMTHD to public; 
grant delete on TB_PMTHD to public;  
grant insert on TB_PMTHD to public; 
grant select on SEQ_TB_PMTHD to public;   