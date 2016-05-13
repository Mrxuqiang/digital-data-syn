/*
================================================================================
��ṹ����:TB_PUBPA
��ṹ����:�ʲ������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBPA;
drop index AK_TB_PUBPA;
drop table TB_PUBPA;
create table TB_PUBPA  (
   PUBPA_ID             INTEGER                              not null, /*�ʲ�����ID            */
   PUBPA001             VARCHAR2(4)                          not null, /*�ʲ��������          */
   PUBPA002             VARCHAR2(60)                         not null, /*�������              */
   PUBPA003             INTEGER,                                       /*��𼶴���              */
   PUBPA004             VARCHAR2(1)                         not null, /*��������              */
   PUBPA005             VARCHAR2(10) ,                                 /*���ᵥλ              */
   PUBPA006             NUMBER(4) ,                                    /*ʹ����              */
   PUBPA007             NUMBER(4)  ,                                   /*ʹ����              */
   PUBPA008             NUMBER(5,4) ,                                  /*����ֵ��              */
   PUBPA009             VARCHAR2(1)                          not null, /*�۾ɷ���              */
   PUBPA010             VARCHAR2(1)                          not null, /*�Ƿ�����ʲ�            */
   PUBPA011             VARCHAR2(1)                          not null, /*�۾�����            */
   PUBPA012             VARCHAR2(1)                          not null, /*ͣ�û����Ƿ��۾�      */
   PUBPA013             VARCHAR2(1),                                   /*���� add by 20090924  */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����          */                               
   CREATE_DATE          DATE,                                          /*��������              */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա              */
   MODI_DATE            DATE,                                          /*�޸�����              */
   FLAG                 NUMBER(1),                                     /*����״̬              */
   constraint PK_TB_PUBPA primary key (PUBPA_ID)
);
create unique index AK_TB_PUBPA on TB_PUBPA (PUBPA001);
create sequence SEQ_TB_PUBPA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBPA to public;
grant index  on TB_PUBPA to public;
grant update on TB_PUBPA to public; 
grant delete on TB_PUBPA to public;  
grant insert on TB_PUBPA to public; 
grant select on SEQ_TB_PUBPA to public;   