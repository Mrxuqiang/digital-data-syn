/*
================================================================================
��ṹ����:TB_PMTIC
��ṹ����:������ȯ���������α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTIC;
drop index AK_TB_PMTIC;
drop table TB_PMTIC;
create table TB_PMTIC  (
   PMTIC_ID             INTEGER                         not null,  /*��������ID        */
   PMTIC001             INTEGER                         not null,  /*������ȯ��ID      */
   PMTIC002             INTEGER                         not null,  /*ȯ��ID            */
   PMTIC003             NUMBER(12,2),                              /*��ȯ������      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTIC primary key (PMTIC_ID)
);
create unique index AK_TB_PMTIC on TB_PMTIC (PMTIC001,PMTIC002);
create sequence SEQ_TB_PMTIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIC to public;
grant index  on TB_PMTIC to public;
grant update on TB_PMTIC to public; 
grant delete on TB_PMTIC to public;  
grant insert on TB_PMTIC to public; 
grant select on SEQ_TB_PMTIC to public;   