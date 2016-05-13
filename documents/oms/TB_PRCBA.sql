/*
================================================================================
��ṹ����:TB_PRCBA
��ṹ����:�ۼ۵�����ͷ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PRCBA;
drop index AK_TB_PRCBA;
drop table TB_PRCBA;
create table TB_PRCBA  (
   PRCBA_ID             INTEGER                         not null,  /*�ۼ۵�����ͷID    */
   PRCBA001             INTEGER                         not null,  /*����ID            */
   PRCBA002             VARCHAR2(30)                    not null,  /*�ۼ۵�������      */
   PRCBA003             DATE                            not null,  /*��������          */
   PRCBA004             INTEGER                         not null,  /*����Ӫ����֯ID    */
   PRCBA005             INTEGER,                                   /*���۲���ID        */
   PRCBA006             INTEGER,                                   /*������ԱID        */
   PRCBA007             VARCHAR2(255),                             /*����ԭ��          */
   PRCBA008             VARCHAR2(1)                     not null,  /*״̬              */
   PRCBA009             VARCHAR2(1),                               /*�Ƿ�ǩ��          */
   PRCBA010             VARCHAR2(30),                              /*ǩ�˵���          */
   PRCBA011             VARCHAR2(1),                               /*ǩ����            */
   PRCBA012             INTEGER,                                   /*¼����ID          */
   PRCBA013             DATE,                                      /*¼������          */
   PRCBA014             INTEGER,                                   /*�����ID          */
   PRCBA015             DATE,                                      /*�������          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PRCBA primary key (PRCBA_ID)
);
create unique index AK_TB_PRCBA on TB_PRCBA (PRCBA002);
create sequence SEQ_TB_PRCBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCBA to public;
grant index  on TB_PRCBA to public;
grant update on TB_PRCBA to public; 
grant delete on TB_PRCBA to public;  
grant insert on TB_PRCBA to public; 
grant select on SEQ_TB_PRCBA to public;   