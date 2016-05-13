/*
================================================================================
��ṹ����:TB_PUBNA
��ṹ����:���㵥λ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBNA;
drop index AK_TB_PUBNA;
drop table TB_PUBNA;
create table TB_PUBNA  (
   PUBNA_ID             INTEGER                         not null,   /*���㵥λ��ID            */
   PUBNA001             VARCHAR2(20)                    not null,   /*���㵥λ����            */
   PUBNA002             VARCHAR2(200)                   not null,   /*���㵥λ����            */
   PUBNA003             VARCHAR2(100),                              /*���㵥λ���            */
   PUBNA004             VARCHAR2(100) ,                             /*��������                */   
   PUBNA005             VARCHAR2(20) ,                              /*������                  */
   PUBNA006             INTEGER,                                    /*��������ID              */
   PUBNA007             INTEGER                          not null,  /*��Ӧ��˾ID              */
   PUBNA008             INTEGER,                                    /*��Ӧ����ID              */
   PUBNA009             INTEGER,                                    /*�ϼ����㵥λID          */
   PUBNA010             VARCHAR2(255),                              /*��ַ                    */
   CREATE_USER          VARCHAR2(12),                               /*������Ա                */
   USER_GROUP           VARCHAR2(12),                               /*������Ա����            */                               
   CREATE_DATE          DATE,                                       /*��������                */
   MODIFIER             VARCHAR2(12),                               /*�޸���Ա                */
   MODI_DATE            DATE,                                       /*�޸�����                */
   FLAG                 NUMBER(1),                                  /*����״̬                */
   constraint PK_TB_PUBNA primary key (PUBNA_ID)
);
create unique index AK_TB_PUBNA on TB_PUBNA (PUBNA001);
create sequence SEQ_TB_PUBNA minvalue 1 NAxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBNA to public;
grant index  on TB_PUBNA to public;
grant update on TB_PUBNA to public; 
grant delete on TB_PUBNA to public;  
grant insert on TB_PUBNA to public; 
grant select on SEQ_TB_PUBNA to public;   