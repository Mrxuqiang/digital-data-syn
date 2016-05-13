/*
================================================================================
��ṹ����:TB_PMTBD
��ṹ����:��Ʒ�ؼ۵���̯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTBD;
drop index AK_TB_PMTBD;
drop table TB_PMTBD;
create table TB_PMTBD  (
   PMTBD_ID             INTEGER                         not null,  /*�ۿ۷�̯ID        */
   PMTBD001             INTEGER                         not null,  /*��Ʒ�ؼ۵�ID      */
   PMTBD002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTBD003             INTEGER,                                   /*��̯����ID        */
   PMTBD004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTBD005             INTEGER,                                   /*��Ӧ��ID          */
   PMTBD006             INTEGER,                                   /*��Ʒ������ID      */
   PMTBD007             VARCHAR2(1)                     not null,  /*��̯����          */
   PMTBD008             DATE,                                      /*��ʼ����          */
   PMTBD009             DATE,                                      /*��������          */
   PMTBD010             NUMBER(12,2),                              /*�����ɹ���        */
   PMTBD011             NUMBER(12,2),                              /*�����������(%)   */
   PMTBD012             NUMBER(12,2),                              /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTBD primary key (PMTBD_ID)
);
create unique index AK_TB_PMTBD on TB_PMTBD (PMTBD001,PMTBD002,PMTBD003,PMTBD004);
create sequence SEQ_TB_PMTBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBD to public;
grant index  on TB_PMTBD to public;
grant update on TB_PMTBD to public; 
grant delete on TB_PMTBD to public;  
grant insert on TB_PMTBD to public; 
grant select on SEQ_TB_PMTBD to public;   