/*
================================================================================
��ṹ����:TB_CCMEA
��ṹ����:����ȯ����ȯ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMEA;
drop index AK_TB_CCMEA;
drop table TB_CCMEA;
create table TB_CCMEA  (
   CCMEA_ID             INTEGER                         not null,  /*����ȯ����ȯ��ID    */
   CCMEA001             INTEGER                         not null,  /*����ID              */
   CCMEA002             VARCHAR2(30)                    not null,  /*��ȯ����            */
   CCMEA003             DATE                            not null,  /*��������            */
   CCMEA004             INTEGER                         not null,  /*Ӫ����֯ID          */
   CCMEA005             INTEGER                         not null,  /*ҵ����ID          */
   CCMEA006             INTEGER                         not null,  /*ҵ����ԱID          */
   CCMEA007             DATE                            not null,  /*��ȯ����            */
   CCMEA008             NUMBER(30)                      not null,  /*����ȯ����          */
   CCMEA009             VARCHAR2(255),                             /*��ע                */
   CCMEA010             INTEGER,                                   /*¼����ID            */
   CCMEA011             DATE,                                      /*¼������            */
   CCMEA012             INTEGER,                                   /*�����ID            */
   CCMEA013             DATE,                                      /*�������            */
   CCMEA014             VARCHAR2(1)                     not null,  /*���״̬            */
   CCMEA015             VARCHAR2(1),                               /*�Ƿ�ǩ��            */
   CCMEA016             VARCHAR2(30),                              /*ǩ�˵���            */
   CCMEA017             VARCHAR2(1),                               /*ǩ����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMEA primary key (CCMEA_ID)
);
create unique index AK_TB_CCMEA on TB_CCMEA (CCMEA002);
create sequence SEQ_TB_CCMEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMEA to public;
grant index  on TB_CCMEA to public;
grant update on TB_CCMEA to public; 
grant delete on TB_CCMEA to public;  
grant insert on TB_CCMEA to public; 
grant select on SEQ_TB_CCMEA to public;   