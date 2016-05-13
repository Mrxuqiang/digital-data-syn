/*
================================================================================
��ṹ����:TB_PMTPC
��ṹ����:���Ʒ���յ���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTPC;
drop index AK_TB_PMTPC;
drop table TB_PMTPC;
create table TB_PMTPC  (
   PMTPC_ID             INTEGER                         not null,  /*���Ʒ���յ���ƷID          */
   PMTPC001             INTEGER                         not null,  /*���Ʒ���յ�ID              */
   PMTPC002             INTEGER                         not null,  /*���Ʒ���յ��˿�ID          */
   PMTPC003             INTEGER                         not null,  /*������ϸ��ƷID                */
   PMTPC004             NUMBER(12,2),                              /*�˿���                      */
   PMTPC005             NUMBER(12,2),                              /*�ۿ۽��                      */
   PMTPC006             NUMBER(12,2),                              /*ʵ�˿���                    */
   PMTPC007             NUMBER(12,2),                              /*���������˿���              */
   PMTPC008             NUMBER(12,2),                              /*Ӧ���ս��                    */
   PMTPC009             NUMBER(12,2),                              /*ʵ���ս��                    */
   PMTOC010             NUMBER(12,2),                              /*���˽��                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTPC primary key (PMTPC_ID)
);
create unique index AK_TB_PMTPC on TB_PMTPC (PMTPC001,PMTPC002,PMTPC003);
create sequence SEQ_TB_PMTPC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPC to public;
grant index  on TB_PMTPC to public;
grant update on TB_PMTPC to public; 
grant delete on TB_PMTPC to public;  
grant insert on TB_PMTPC to public; 
grant select on SEQ_TB_PMTPC to public;  