/*
================================================================================
��ṹ����:TB_RECBB
��ṹ����:���˴����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_RECBB;
drop index AK_TB_RECBB;
drop table TB_RECBB;
create table TB_RECBB  (
   RECBB_ID             INTEGER                         not null,  /*���˴���ID              */
   RECBB001             INTEGER                         not null,  /*����ID              */
   RECBB002             INTEGER                         not null,  /*��˾ID              */
   RECBB003             DATE                            not null,  /*��������              */
   RECBB004             INTEGER                         not null,  /*��Դ��ID                */
   RECBB005             VARCHAR2(30),                              /*����              */
   RECBB006             INTEGER                         not null,  /*�ͻ�ID              */
   RECBB007             INTEGER                         not null,  /*�տ�ͻ�ID             */
   RECBB008             INTEGER,                                   /*����ID                  */
   RECBB009             INTEGER ,                                  /*��ԱID                  */
   RECBB010             INTEGER                         not null,  /*����ID                  */
   RECBB011             NUMBER(5,4)                     not null,  /*����                  */
   RECBB012             NUMBER(16,2),                              /*ԭ�ҽ��                  */
   RECBB013             NUMBER(16,2),                              /*���ҽ��                  */
   RECBB014             VARCHAR2(1) ,                               /*����                  */
   RECBB015             VARCHAR2(255) ,                              /*��ע                  */
   RECBB016             INTEGER,                                  /*¼����ID                  */
   RECBB017             DATE,                                     /*¼������                  */
   RECBB018             VARCHAR2(1),                              /*����ƾ֤                  */
   CREATE_USER          VARCHAR2(12),                              /*������Ա              */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER(1),                                 /*����״̬              */
   constraint PK_TB_RECBB primary key (RECBB_ID)
);
create unique index AK_TB_RECBB on TB_RECBB (RECBB001,RECBB002);
create sequence SEQ_TB_RECBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECBB to public;
grant index  on TB_RECBB to public;
grant update on TB_RECBB to public; 
grant delete on TB_RECBB to public;  
grant insert on TB_RECBB to public; 
grant select on SEQ_TB_RECBB to public;   