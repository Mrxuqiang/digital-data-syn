/*
================================================================================
��ṹ����:TB_PMTMC
��ṹ����:ȯ���ŵ���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTMC;
drop index AK_TB_PMTMC;
drop table TB_PMTMC;
create table TB_PMTMC  (
   PMTMC_ID             INTEGER                         not null,  /*ȯ���ŵ���ƷID                */
   PMTMC001             INTEGER                         not null,  /*ȯ���ŵ�ID                    */
   PMTMC002             INTEGER                         not null,  /*ȯ���ŵ�����ID                */
   PMTMC003             INTEGER,                                   /*������ϸ��ƷID                */
   PMTMC004             NUMBER(12,2),                              /*������                      */
   PMTMC005             NUMBER(12,2),                              /*�ۿ۽��                      */
   PMTMC006             NUMBER(12,2),                              /*ʵ������                    */
   PMTMC007             NUMBER(12,2),                              /*���뷵ȯ������              */
   PMTMC008             NUMBER(12,2),                              /*�ɷ�ȯ���                    */
   PMTMC009             NUMBER(12,2),                              /*ʵ��ȯ���                    */
   PMTMC010             NUMBER(12,2),                              /*���۽��                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTMC primary key (PMTMC_ID)
);
create unique index AK_TB_PMTMC on TB_PMTMC (PMTMC001,PMTMC002,PMTMC003);
create sequence SEQ_TB_PMTMC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMC to public;
grant index  on TB_PMTMC to public;
grant update on TB_PMTMC to public; 
grant delete on TB_PMTMC to public;  
grant insert on TB_PMTMC to public; 
grant select on SEQ_TB_PMTMC to public;   