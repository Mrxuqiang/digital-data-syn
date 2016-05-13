/*
================================================================================
��ṹ����:TB_CCMCG
��ṹ����:���ѿ���ֵ����ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CCMCG;
drop index AK_TB_CCMCG;
drop table TB_CCMCG;
create table TB_CCMCG  (
   CCMCG_ID             INTEGER                         not null,  /*���ѿ���ֵ����ϸID  */
   CCMCG001             INTEGER                         not null,  /*���ѿ���ֵ��ID      */
   CCMCG002             INTEGER                         not null,  /*����ID              */
   CCMCG003             NUMBER(12,2)                    not null,  /*�˿���            */
   CCMCG004             INTEGER,                                   /*��������ID          */
   CCMCG005             NUMBER(12,2),                              /*�����ѽ��          */
   CCMCG006             VARCHAR2(30),                              /*����                */
   CCMCG007             NUMBER(12,2),                              /*֧Ʊ���            */
   CCMCG008             VARCHAR2(16),                              /*֧Ʊ��              */
   CCMCG009             VARCHAR2(60),                              /*֧Ʊ��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CCMCG primary key (CCMCG_ID)
);
create unique index AK_TB_CCMCG on TB_CCMCG (CCMCG001,CCMCG002);
create sequence SEQ_TB_CCMCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCG to public;
grant index  on TB_CCMCG to public;
grant update on TB_CCMCG to public; 
grant delete on TB_CCMCG to public;  
grant insert on TB_CCMCG to public; 
grant select on SEQ_TB_CCMCG to public;   