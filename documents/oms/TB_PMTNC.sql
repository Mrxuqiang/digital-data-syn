/*
================================================================================
��ṹ����:TB_PMTNC
��ṹ����:ȯ���յ���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTNC;
drop index AK_TB_PMTNC;
drop table TB_PMTNC;
create table TB_PMTNC  (
   PMTNC_ID             INTEGER                         not null,  /*ȯ���յ���ƷID                */
   PMTNC001             INTEGER                         not null,  /*ȯ���յ�ID                    */
   PMTNC002             INTEGER                         not null,  /*ȯ���յ��˿�ID                */
   PMTNC003             INTEGER                         not null,  /*������ϸ��ƷID                */
   PMTNC004             NUMBER(12,2),                              /*�˿���                      */
   PMTNC005             NUMBER(12,2),                              /*�˿��ۿ۽��                  */
   PMTNC006             NUMBER(12,2),                              /*ʵ�˿���                    */
   PMTNC007             NUMBER(12,2),                              /*������ȯ�˿���              */
   PMTNC008             NUMBER(12,2),                              /*Ӧ����ȯ���                  */
   PMTNC009             NUMBER(12,2),                              /*ʵ����ȯ���                  */
   PMTNC010             NUMBER(12,2),                              /*���˽��                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTNC primary key (PMTNC_ID)
);
create unique index AK_TB_PMTNC on TB_PMTNC (PMTNC001,PMTNC002,PMTNC003);
create sequence SEQ_TB_PMTNC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTNC to public;
grant index  on TB_PMTNC to public;
grant update on TB_PMTNC to public; 
grant delete on TB_PMTNC to public;  
grant insert on TB_PMTNC to public; 
grant select on SEQ_TB_PMTNC to public;   