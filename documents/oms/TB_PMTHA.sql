/*
================================================================================
��ṹ����:TB_PMTHA
��ṹ����:�ۼ���Ʒ����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHA;
drop index AK_TB_PMTHA;
drop table TB_PMTHA;
create table TB_PMTHA  (
   PMTHA_ID             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHA001             INTEGER                         not null,  /*����ID            */
   PMTHA002             VARCHAR2(30)                    not null,  /*��������          */
   PMTHA003             DATE                            not null,  /*��������          */
   PMTHA004             INTEGER                         not null,  /*����Ӫ����֯      */
   PMTHA005             INTEGER                         not null,  /*������ID        */
   PMTHA006             INTEGER                         not null,  /*������ԱID        */
   PMTHA007             INTEGER                         not null,  /*��������ID        */
   PMTHA008             VARCHAR2(255),                             /*��������          */
   PMTHA009             VARCHAR2(1),                               /*�Ƿ��ܻ���        */
   PMTHA010             VARCHAR2(1),                               /*�����ܷ�ͬʱ�ۼ���Ʒ  */
   PMTHA011             VARCHAR2(2),                               /*������ʽ          */
   PMTHA012             VARCHAR2(2),                               /*�������          */
   PMTHA013             VARCHAR2(1),                               /*β��μӴ���    */
   PMTHA014             VARCHAR2(2),                               /*��̯��ʽ          */
   PMTHA015             VARCHAR2(2),                               /*��̯���          */
   PMTHA016             INTEGER,                                   /*¼����ID          */
   PMTHA017             DATE,                                      /*¼������          */
   PMTHA018             INTEGER,                                   /*�����ID          */
   PMTHA019             DATE,                                      /*�������          */
   PMTHA020             VARCHAR2(1)                     not null,  /*���״̬          */
   PMTHA021             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PMTHA022             VARCHAR2(30),                              /*ǩ�˵���          */
   PMTHA023             VARCHAR2(1),                               /*ǩ����            */
   PMTHA024             VARCHAR2(2)                     not null,  /*��������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHA primary key (PMTHA_ID)
);
create unique index AK_TB_PMTHA on TB_PMTHA (PMTHA002);
create sequence SEQ_TB_PMTHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHA to public;
grant index  on TB_PMTHA to public;
grant update on TB_PMTHA to public; 
grant delete on TB_PMTHA to public;  
grant insert on TB_PMTHA to public; 
grant select on SEQ_TB_PMTHA to public;   