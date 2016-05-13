/*
================================================================================
��ṹ����:TB_PUBNI
��ṹ����:Ʊ�����ͱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNI;
drop index AK_TB_PUBNI;
drop table TB_PUBNI;
create table TB_PUBNI  (
   PUBNI_ID             INTEGER                              not null, /*Ʊ������ID            */
   PUBNI001             VARCHAR2(4)                          not null, /*Ʊ�����ͱ���          */
   PUBNI002             VARCHAR2(60)                         not null, /*����                  */
   PUBNI003             INTEGER                              not null, /*���㷽ʽID            */
   PUBNI004             NUNIER(4),                                     /*������                */
   PUBNI005             VARCHAR2(1)                         not null,  /*�����ڼ�����λ        */
   PUBNI006             VARCHAR2(1)                         not null,  /*����                  */
   PUBNI007             VARCHAR2(255),                                 /*��ע                  */
   PUBNI008             VARCHAR2(1)                         not null,  /*Ʊ������              */
   PUBNI009             DATE                                not null,  /*��������              */
   CREATE_USER          VARCHAR2(12),                                  /*������Ա              */
   USER_GROUP           VARCHAR2(12),                                  /*������Ա����          */                               
   CREATE_DATE          DATE,                                          /*��������              */
   MODIFIER             VARCHAR2(12),                                  /*�޸���Ա              */
   MODI_DATE            DATE,                                          /*�޸�����              */
   FLAG                 NUNIER(1),                                     /*����״̬              */
   constraint PK_TB_PUBNI priNIry key (PUBNI_ID)
);
create unique index AK_TB_PUBNI on TB_PUBNI (PUBNI001);
create sequence SEQ_TB_PUBNI minvalue 1 NIxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNI to public;
grant index  on TB_PUBNI to public;
grant update on TB_PUBNI to public; 
grant delete on TB_PUBNI to public;  
grant insert on TB_PUBNI to public; 
grant select on SEQ_TB_PUBNI to public;   