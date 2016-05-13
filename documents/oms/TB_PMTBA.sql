/*
================================================================================
��ṹ����:TB_PMTBA
��ṹ����:��Ʒ�ؼ۴���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTBA;
drop index AK_TB_PMTBA;
drop table TB_PMTBA;
create table TB_PMTBA  (
   PMTBA_ID             INTEGER                         not null,  /*��Ʒ�ؼ۵�ID      */
   PMTBA001             INTEGER                         not null,  /*����ID            */
   PMTBA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTBA003             DATE                            not null,  /*��������          */
   PMTBA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTBA005             INTEGER                         not null,  /*������ID        */
   PMTBA006             INTEGER                         not null,  /*������ԱID        */
   PMTBA007             INTEGER                         not null,  /*��������ID        */
   PMTBA008             VARCHAR2(255),                             /*��������          */
   PMTBA009             VARCHAR2(2)                     not null,  /*��������          */
   PMTBA010             VARCHAR2(1),                               /*�Ƿ�ɻ���        */
   PMTBA011             INTEGER,                                   /*¼����ID          */
   PMTBA012             DATE,                                      /*¼������          */
   PMTBA013             INTEGER,                                   /*�����ID          */
   PMTBA014             DATE,                                      /*�������          */
   PMTBA015             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTBA016             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTBA017             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTBA018             VARCHAR2(1),                               /*ǩ����            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTBA primary key (PMTBA_ID)
);
create unique index AK_TB_PMTBA on TB_PMTBA (PMTBA002);
create sequence SEQ_TB_PMTBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBA to public;
grant index  on TB_PMTBA to public;
grant update on TB_PMTBA to public; 
grant delete on TB_PMTBA to public;  
grant insert on TB_PMTBA to public; 
grant select on SEQ_TB_PMTBA to public;   