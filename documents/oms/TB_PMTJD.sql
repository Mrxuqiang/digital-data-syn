/*
================================================================================
��ṹ����:TB_PMTJD
��ṹ����:��Ʒ��ϵ���̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTJD;
drop index AK_TB_PMTJD;
drop table TB_PMTJD;
create table TB_PMTJD  (
   PMTJD_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTJD001             INTEGER                         not null,  /*��Ʒ��ϵ�ID      */
   PMTJD002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTJD003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTJD004             NUMBER(12,2) ,                             /*�������          */
   PMTJD005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTJD primary key (PMTJD_ID)
);
create unique index AK_TB_PMTJD on TB_PMTJD (PMTJD001,PMTJD002,PMTJD003);
create sequence SEQ_TB_PMTJD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJD to public;
grant index  on TB_PMTJD to public;
grant update on TB_PMTJD to public; 
grant delete on TB_PMTJD to public;  
grant insert on TB_PMTJD to public; 
grant select on SEQ_TB_PMTJD to public;   