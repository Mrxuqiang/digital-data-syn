/*
================================================================================
��ṹ����:TB_PMTOC
��ṹ����:���Ʒ���ŵ���Ʒ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTOC;
drop index AK_TB_PMTOC;
drop table TB_PMTOC;
create table TB_PMTOC  (
   PMTOC_ID             INTEGER                         not null,  /*���Ʒ���ŵ���ƷID          */
   PMTOC001             INTEGER                         not null,  /*���Ʒ���ŵ�ID              */
   PMTOC002             INTEGER                         not null,  /*���Ʒ���ŵ�����ID          */
   PMTOC003             INTEGER                         not null,  /*������ϸ��ƷID                */
   PMTOC004             NUMBER(12,2),                              /*������                      */
   PMTOC005             NUMBER(12,2),                              /*�ۿ۽��                      */
   PMTOC006             NUMBER(12,2),                              /*ʵ������                    */
   PMTOC007             NUMBER(12,2),                              /*��������������              */
   PMTOC008             NUMBER(12,2),                              /*Ӧ�������                    */
   PMTOC009             NUMBER(12,2),                              /*ʵ�������                    */
   PMTOC010             NUMBER(12,2),                              /*���۽��                      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա                      */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����                  */                               
   CREATE_DATE          DATE,                                      /*��������                      */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա                      */
   MODI_DATE            DATE,                                      /*�޸�����                      */
   FLAG                 NUMBER(1),                                 /*����״̬                      */
   constraint PK_TB_PMTOC primary key (PMTOC_ID)
);
create unique index AK_TB_PMTOC on TB_PMTOC (PMTOC001,PMTOC002,PMTOC003);
create sequence SEQ_TB_PMTOC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOC to public;
grant index  on TB_PMTOC to public;
grant update on TB_PMTOC to public; 
grant delete on TB_PMTOC to public;  
grant insert on TB_PMTOC to public; 
grant select on SEQ_TB_PMTOC to public;   