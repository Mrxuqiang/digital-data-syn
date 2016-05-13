/*
================================================================================
��ṹ����:TB_PMTCD
��ṹ����:��Ʒ�ۿ۵���̯��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTCD;
drop index AK_TB_PMTCD;
drop table TB_PMTCD;
create table TB_PMTCD  (
   PMTCD_ID             INTEGER                         not null,  /*�ۿ۷�̯ID        */
   PMTCD001             INTEGER                         not null,  /*��Ʒ�ۿ۵�ID      */
   PMTCD002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTCD003             INTEGER,                                   /*��̯����ID        */
   PMTCD004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTCD005             INTEGER,                                   /*��Ӧ��ID          */
   PMTCD006             INTEGER,                                   /*��Ʒ������ID      */
   PMTCD007             VARCHAR2(1)                     not null,  /*��̯����          */
   PMTCD008             DATE,                                      /*��ʼ����          */
   PMTCD009             DATE,                                      /*��������          */
   PMTCD010             NUMBER(12,2),                              /*�����ɹ���        */
   PMTCD011             NUMBER(12,2),                              /*�����������(%)   */
   PMTCD012             NUMBER(12,2),                              /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTCD primary key (PMTCD_ID)
);
create unique index AK_TB_PMTCD on TB_PMTCD (PMTCD001,PMTCD002,PMTCD003);
create sequence SEQ_TB_PMTCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCD to public;
grant index  on TB_PMTCD to public;
grant update on TB_PMTCD to public; 
grant delete on TB_PMTCD to public;  
grant insert on TB_PMTCD to public; 
grant select on SEQ_TB_PMTCD to public;   