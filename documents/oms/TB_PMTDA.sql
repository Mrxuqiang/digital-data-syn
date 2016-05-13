/*
================================================================================
��ṹ����:TB_PMTDA
��ṹ����:��Ʒ��������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTDA;
drop index AK_TB_PMTDA;
drop table TB_PMTDA;
create table TB_PMTDA  (
   PMTDA_ID             INTEGER                         not null,  /*��Ʒ������ID      */
   PMTDA001             INTEGER                         not null,  /*����ID            */
   PMTDA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTDA003             DATE                            not null,  /*��������          */
   PMTDA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTDA005             INTEGER                         not null,  /*������ID        */
   PMTDA006             INTEGER                         not null,  /*������ԱID        */
   PMTDA007             INTEGER                         not null,  /*��������ID        */
   PMTDA008             VARCHAR2(255),                             /*��������          */
   PMTDA009             VARCHAR2(1),                               /*�Ƿ��ܻ���        */
   PMTDA010             VARCHAR2(1),                               /*�����ܷ�ͬʱ��Ʒ����  */
   PMTDA011             VARCHAR2(2)                     not null,  /*��������          */
   PMTDA012             VARCHAR2(2)                     not null,  /*������Χ          */
   PMTDA013             VARCHAR2(2)                     not null,  /*������ʽ          */
   PMTDA014             VARCHAR2(2),                               /*��̯��ʽ          */
   PMTDA015             VARCHAR2(2),                               /*��̯���          */
   PMTDA016             INTEGER,                                   /*¼����ID          */
   PMTDA017             DATE,                                      /*¼������          */
   PMTDA018             INTEGER,                                   /*�����ID          */
   PMTDA019             DATE,                                      /*�������          */
   PMTDA020             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTDA021             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTDA022             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTDA023             VARCHAR2(1),                               /*ǩ����            */
   PMTDA024             VARCHAR2(2)                     not null,  /*��������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTDA primary key (PMTDA_ID)
);
create unique index AK_TB_PMTDA on TB_PMTDA (PMTDA002);
create sequence SEQ_TB_PMTDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDA to public;
grant index  on TB_PMTDA to public;
grant update on TB_PMTDA to public; 
grant delete on TB_PMTDA to public;  
grant insert on TB_PMTDA to public; 
grant select on SEQ_TB_PMTDA to public;   