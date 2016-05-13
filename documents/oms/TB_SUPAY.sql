/*
================================================================================
��ṹ����:TB_SUPAY
��ṹ����:���̼ƻ����ݱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAY;
drop index AK_TB_SUPAY;
drop table TB_SUPAY;
create table TB_SUPAY  (
   SUPAY_ID             INTEGER                         not null,  /*���̼ƻ�����ID      */
   SUPAY001             INTEGER                         not null,  /*���̼ƻ�ID          */
   SUPAY002             INTEGER,				   /*¥��ID              */
   SUPAY003             INTEGER,				   /*¥��ID              */
   SUPAY004             INTEGER,				   /*��Ӫ����ID          */
   SUPAY005             INTEGER,				   /*Ʒ�Ƶȼ�ID          */
   SUPAY006             NUMBER(12,2),				   /*�������ռ��%       */
   SUPAY007             VARCHAR2(100),                             /*��ע                */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAY primary key (SUPAY_ID)
);
create unique index AK_TB_SUPAY on TB_SUPAY (SUPAY001,SUPAY002,SUPAY003,SUPAY004,SUPAY005);
create sequence SEQ_TB_SUPAY minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAY to public;
grant index  on TB_SUPAY to public;
grant update on TB_SUPAY to public; 
grant delete on TB_SUPAY to public;  
grant insert on TB_SUPAY to public; 
grant select on SEQ_TB_SUPAY to public;   