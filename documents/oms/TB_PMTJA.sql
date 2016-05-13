/*
================================================================================
��ṹ����:TB_PMTJA
��ṹ����:��Ʒ��ϴ���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTJA;
drop index AK_TB_PMTJA;
drop table TB_PMTJA;
create table TB_PMTJA  (
   PMTJA_ID             INTEGER                         not null,  /*��Ʒ��ϵ�ID      */
   PMTJA001             INTEGER                         not null,  /*����ID            */
   PMTJA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTJA003             DATE                            not null,  /*��������          */
   PMTJA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTJA005             INTEGER                         not null,  /*������ID        */
   PMTJA006             INTEGER                         not null,  /*������ԱID        */
   PMTJA007             INTEGER                         not null,  /*��������ID        */
   PMTJA008             VARCHAR2(255),                             /*��������          */
   PMTJA009             VARCHAR2(1),                               /*�Ƿ��ܻ���        */
   PMTJA010             VARCHAR2(1),                               /*�����ܷ�ͬʱ��Ʒ���  */
   PMTJA011             VARCHAR2(2),                               /*��̯��ʽ          */
   PMTJA012             VARCHAR2(2),                               /*��̯���          */
   PMTJA013             INTEGER,                                   /*¼����ID          */
   PMTJA014             DATE,                                      /*¼������          */
   PMTJA015             INTEGER,                                   /*�����ID          */
   PMTJA016             DATE,                                      /*�������          */
   PMTJA017             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTJA018             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTJA019             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTJA020             VARCHAR2(1),                               /*ǩ����            */
   PMTJA021             VARCHAR2(2)                     not null,  /*��������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTJA primary key (PMTJA_ID)
);
create unique index AK_TB_PMTJA on TB_PMTJA (PMTJA002);
create sequence SEQ_TB_PMTJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJA to public;
grant index  on TB_PMTJA to public;
grant update on TB_PMTJA to public; 
grant delete on TB_PMTJA to public;  
grant insert on TB_PMTJA to public; 
grant select on SEQ_TB_PMTJA to public;   