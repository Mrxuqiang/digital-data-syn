/*
================================================================================
��ṹ����:TB_SUPAO
��ṹ����:���̱�����ʱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SUPAO;
drop index AK_TB_SUPAO;
drop table TB_SUPAO;
create table TB_SUPAO  (
   SUPAO_ID             INTEGER                         not null,  /*���̱������ID      */
   SUPAO001             INTEGER                         not null,  /*���̱��ID          */
   SUPAO002             INTEGER                         not null,  /*֤������ID          */
   SUPAO003             VARCHAR2(40)                    not null,  /*֤������            */
   SUPAO004             VARCHAR2(30)                    not null,  /*��֤��              */
   SUPAO005             DATE,                                      /*��Ч������          */
   SUPAO006             DATE,                                      /*��Ч��ֹ��          */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_SUPAO primary key (SUPAO_ID)
);
create unique index AK_TB_SUPAO on TB_SUPAO (SUPAO001,SUPAO002);
create sequence SEQ_TB_SUPAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAO to public;
grant index  on TB_SUPAO to public;
grant update on TB_SUPAO to public; 
grant delete on TB_SUPAO to public;  
grant insert on TB_SUPAO to public; 
grant select on SEQ_TB_SUPAO to public;   