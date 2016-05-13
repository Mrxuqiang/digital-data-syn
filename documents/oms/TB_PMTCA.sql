/*
================================================================================
��ṹ����:TB_PMTCA
��ṹ����:��Ʒ�ۿ۴���������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTCA;
drop index AK_TB_PMTCA;
drop table TB_PMTCA;
create table TB_PMTCA  (
   PMTCA_ID             INTEGER                         not null,  /*��Ʒ�ۿ۵�ID      */
   PMTCA001             INTEGER                         not null,  /*����ID            */
   PMTCA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTCA003             DATE                            not null,  /*��������          */
   PMTCA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTCA005             INTEGER                         not null,  /*������ID        */
   PMTCA006             INTEGER                         not null,  /*������ԱID        */
   PMTCA007             INTEGER                         not null,  /*��������ID        */
   PMTCA008             VARCHAR2(255),                             /*��������          */
   PMTCA009             NUMBER(12,2),                              /*�ۼ�Ĭ���ۿ���(%) */
   PMTCA010             NUMBER(12,2),                              /*��ԱĬ���ۿ���(%) */
   PMTCA011             NUMBER(12,2),                              /*����ۼ�Ĭ���ۿ���(%) */
   PMTCA012             VARCHAR2(1),                               /*�Ƿ��ܻ���        */
   PMTCA013             VARCHAR2(1),                               /*�ؼ��ܷ��ۿ�      */
   PMTCA014             VARCHAR2(2)                     not null,  /*�ۿۻ�׼���      */
   PMTCA015             INTEGER,                                   /*¼����ID          */
   PMTCA016             DATE,                                      /*¼������          */
   PMTCA017             INTEGER,                                   /*�����ID          */
   PMTCA018             DATE,                                      /*�������          */
   PMTCA019             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTCA020             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTCA021             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTCA022             VARCHAR2(1),                               /*ǩ����            */
   PMTCA023             VARCHAR2(2)                     not null,  /*��������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTCA primary key (PMTCA_ID)
);
create unique index AK_TB_PMTCA on TB_PMTCA (PMTCA002);
create sequence SEQ_TB_PMTCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCA to public;
grant index  on TB_PMTCA to public;
grant update on TB_PMTCA to public; 
grant delete on TB_PMTCA to public;  
grant insert on TB_PMTCA to public; 
grant select on SEQ_TB_PMTCA to public;   