/*
================================================================================
��ṹ����:TB_PMTHG
��ṹ����:�ۼ���Ʒ����Чʱ���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHG;
drop index AK_TB_PMTHG;
drop table TB_PMTHG;
create table TB_PMTHG  (
   PMTHG_ID             INTEGER                         not null,  /*�ۼ���Ʒ��Чʱ��ID*/
   PMTHG001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHG002             DATE                            not null,  /*��ʼ����          */
   PMTHG003             VARCHAR2(8)                     not null,  /*��ʼʱ��          */
   PMTHG004             DATE                            not null,  /*��������          */
   PMTHG005             VARCHAR2(8)                     not null,  /*����ʱ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHG primary key (PMTHG_ID)
);
create unique index AK_TB_PMTHG on TB_PMTHG (PMTHG001,PMTHG002,PMTHG003);
create sequence SEQ_TB_PMTHG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHG to public;
grant index  on TB_PMTHG to public;
grant update on TB_PMTHG to public; 
grant delete on TB_PMTHG to public;  
grant insert on TB_PMTHG to public; 
grant select on SEQ_TB_PMTHG to public;   