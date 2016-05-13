/*
================================================================================
��ṹ����:TB_SUPAP
��ṹ����:���̱��Ʒ�Ʊ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAP;
drop index AK_TB_SUPAP;
drop table TB_SUPAP;
create table TB_SUPAP  (
   SUPAP_ID             INTEGER                         not null,  /*���̱��Ʒ��ID      */
   SUPAP001             INTEGER                         not null,  /*���̱��ID          */
   SUPAP002             INTEGER                         not null,  /*Ʒ��ID              */
   SUPAP003             INTEGER                         not null,  /*����ID              */
   SUPAP004             VARCHAR2(255),                             /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAP primary key (SUPAP_ID)
);
create unique index AK_TB_SUPAP on TB_SUPAP (SUPAP001,SUPAP002);
create sequence SEQ_TB_SUPAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAP to public;
grant index  on TB_SUPAP to public;
grant update on TB_SUPAP to public; 
grant delete on TB_SUPAP to public;  
grant insert on TB_SUPAP to public; 
grant select on SEQ_TB_SUPAP to public;   