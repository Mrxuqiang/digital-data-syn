/*
================================================================================
��ṹ����:TB_CONCE
��ṹ����:��ͬ��������Թ̶������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONCE;
drop index AK_TB_CONCE;
drop table TB_CONCE;
create table TB_CONCE  (
   CONCE_ID             INTEGER                         not null,  /*��ͬ��������Թ̶�������ϸID*/
   CONCE001             INTEGER                         not null,  /*��ͬ���ID          */
   CONCE002             INTEGER                         not null,  /*��ͬ��������Թ̶�����ID */
   CONCE003             DATE                            not null,  /*��ʼ����            */
   CONCE004             DATE                            not null,  /*��������            */
   CONCE005             NUMBER(12,2)                    not null,  /*��׼��              */
   CONCE006             NUMBER(12,2)                    not null,  /*��׼��λ            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONCE primary key (CONCE_ID)
);
create unique index AK_TB_CONCE on TB_CONCE (CONCE001,CONCE002,CONCE003);
create sequence SEQ_TB_CONCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCE to public;
grant index  on TB_CONCE to public;
grant update on TB_CONCE to public; 
grant delete on TB_CONCE to public;  
grant insert on TB_CONCE to public; 
grant select on SEQ_TB_CONCE to public;   