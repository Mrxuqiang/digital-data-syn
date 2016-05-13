/*
================================================================================
��ṹ����:TB_PMTJC
��ṹ����:��Ʒ��ϵ���̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTJC;
drop index AK_TB_PMTJC;
drop table TB_PMTJC;
create table TB_PMTJC  (
   PMTJC_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTJC001             INTEGER                         not null,  /*��Ʒ��ϵ�ID      */
   PMTJC002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTJC003             INTEGER,                                   /*��̯����ID        */
   PMTJC004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTJC005             INTEGER,                                   /*��Ӧ��ID          */
   PMTJC006             INTEGER,                                   /*��Ʒ������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTJC primary key (PMTJC_ID)
);
create unique index AK_TB_PMTJC on TB_PMTJC (PMTJC001,PMTJC002,PMTJC003);
create sequence SEQ_TB_PMTJC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJC to public;
grant index  on TB_PMTJC to public;
grant update on TB_PMTJC to public; 
grant delete on TB_PMTJC to public;  
grant insert on TB_PMTJC to public; 
grant select on SEQ_TB_PMTJC to public;   