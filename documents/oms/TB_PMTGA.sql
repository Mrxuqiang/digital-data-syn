/*
================================================================================
��ṹ����:TB_PMTGA
��ṹ����:�ۼƷ�ȯ����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTGA;
drop index AK_TB_PMTGA;
drop table TB_PMTGA;
create table TB_PMTGA  (
   PMTGA_ID             INTEGER                         not null,  /*�ۼƷ�ȯ��ID      */
   PMTGA001             INTEGER                         not null,  /*����ID            */
   PMTGA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTGA003             DATE                            not null,  /*��������          */
   PMTGA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTGA005             INTEGER                         not null,  /*������ID        */
   PMTGA006             INTEGER                         not null,  /*������ԱID        */
   PMTGA007             INTEGER                         not null,  /*��������ID        */
   PMTGA008             VARCHAR2(255),                             /*��������          */
   PMTGA009             VARCHAR2(1),                               /*�Ƿ��ܻ���        */
   PMTGA010             VARCHAR2(1),                               /*�����ܷ�ͬʱ�ۼƷ�ȯ  */
   PMTGA011             VARCHAR2(2),                               /*��ȯ��ʽ          */
   PMTGA012             VARCHAR2(2),                               /*��ȯ���          */
   PMTGA013             VARCHAR2(2),                               /*�����������      */
   PMTGA014             NUMBER(12,2),                              /*�������          */
   PMTGA015             VARCHAR2(1),                               /*β��μӴ���    */
   PMTGA016             VARCHAR2(2),                               /*��̯��ʽ          */
   PMTGA017             VARCHAR2(2),                               /*��̯���          */
   PMTGA018             INTEGER,                                   /*¼����ID          */
   PMTGA019             DATE,                                      /*¼������          */
   PMTGA020             INTEGER,                                   /*�����ID          */
   PMTGA021             DATE,                                      /*�������          */
   PMTGA022             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTGA023             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTGA024             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTGA025             VARCHAR2(1),                               /*ǩ����            */
   PMTGA026             VARCHAR2(2)                     not null,  /*��������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTGA primary key (PMTGA_ID)
);
create unique index AK_TB_PMTGA on TB_PMTGA (PMTGA002);
create sequence SEQ_TB_PMTGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGA to public;
grant index  on TB_PMTGA to public;
grant update on TB_PMTGA to public; 
grant delete on TB_PMTGA to public;  
grant insert on TB_PMTGA to public; 
grant select on SEQ_TB_PMTGA to public;   