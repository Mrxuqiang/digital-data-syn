/*
================================================================================
��ṹ����:TB_PMTUA
��ṹ����:�������������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTUA;
drop index AK_TB_PMTUA;
drop table TB_PMTUA;
create table TB_PMTUA  (
   PMTUA_ID             INTEGER                         not null,  /*���������ID      */
   PMTUA001             INTEGER                         not null,  /*����ID            */
   PMTUA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTUA003             DATE                            not null,  /*��������          */
   PMTUA004             VARCHAR2(2),                               /*��Դ����          */
   PMTUA005             INTEGER                         not null,  /*��Դ����ID        */
   PMTUA006             INTEGER                         not null,  /*���Ӫ����֯      */
   PMTUA007             INTEGER                         not null,  /*�������ID        */
   PMTUA008             INTEGER                         not null,  /*�����ԱID        */
   PMTUA009             VARCHAR2(255),                             /*���˵��          */
   PMTUA010             INTEGER,                                   /*¼����ID          */
   PMTUA011             DATE,                                      /*¼������          */
   PMTUA012             INTEGER,                                   /*�����ID          */
   PMTUA013             DATE,                                      /*�������          */
   PMTUA014             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTUA015             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTUA016             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTUA017             VARCHAR2(1),                               /*ǩ����            */
   PMTUA018             VARCHAR2(16),                              /*��Դ����          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTUA primary key (PMTUA_ID)
);
create unique index AK_TB_PMTUA on TB_PMTUA (PMTUA002);
create sequence SEQ_TB_PMTUA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTUA to public;
grant index  on TB_PMTUA to public;
grant update on TB_PMTUA to public; 
grant delete on TB_PMTUA to public;  
grant insert on TB_PMTUA to public; 
grant select on SEQ_TB_PMTUA to public;   