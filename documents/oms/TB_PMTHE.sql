/*
================================================================================
��ṹ����:TB_PMTHE
��ṹ����:�ۼ���Ʒ����̯��Χ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTHE;
drop index AK_TB_PMTHE;
drop table TB_PMTHE;
create table TB_PMTHE  (
   PMTHE_ID             INTEGER                         not null,  /*��̯��ΧID        */
   PMTHE001             INTEGER                         not null,  /*�ۼ���Ʒ��ID      */
   PMTHE002             VARCHAR2(1)                     not null,  /*��̯��������      */
   PMTHE003             INTEGER,                                   /*��̯����ID        */
   PMTHE004             NUMBER(5)                       not null,  /*��̯����˳���    */
   PMTHE005             INTEGER,                                   /*��Ӧ��ID          */
   PMTHE006             INTEGER,                                   /*��Ʒ������ID      */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTHE primary key (PMTHE_ID)
);
create unique index AK_TB_PMTHE on TB_PMTHE (PMTHE001,PMTHE002,PMTHE003);
create sequence SEQ_TB_PMTHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHE to public;
grant index  on TB_PMTHE to public;
grant update on TB_PMTHE to public; 
grant delete on TB_PMTHE to public;  
grant insert on TB_PMTHE to public; 
grant select on SEQ_TB_PMTHE to public;   