/*
================================================================================
��ṹ����:TB_PMTEF
��ṹ����:�����ۿ۵���̯���α�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PMTEF;
drop index AK_TB_PMTEF;
drop table TB_PMTEF;
create table TB_PMTEF  (
   PMTEF_ID             INTEGER                         not null,  /*��̯����ID        */
   PMTEF001             INTEGER                         not null,  /*�����ۿ۵�ID      */
   PMTEF002             INTEGER                         not null,  /*��̯��ΧID        */
   PMTEF003             NUMBER(12,2) ,                             /*��ʼ���          */
   PMTEF004             NUMBER(12,2) ,                             /*�������          */
   PMTEF005             NUMBER(12,2) ,                             /*��Ӧ�̷�̯����(%) */
   CREATE_USER          VARCHAR2(12),                              /*������Ա          */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����      */                               
   CREATE_DATE          DATE,                                      /*��������          */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա          */
   MODI_DATE            DATE,                                      /*�޸�����          */
   FLAG                 NUMBER(1),                                 /*����״̬          */
   constraint PK_TB_PMTEF primary key (PMTEF_ID)
);
create unique index AK_TB_PMTEF on TB_PMTEF (PMTEF001,PMTEF002,PMTEF003);
create sequence SEQ_TB_PMTEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEF to public;
grant index  on TB_PMTEF to public;
grant update on TB_PMTEF to public; 
grant delete on TB_PMTEF to public;  
grant insert on TB_PMTEF to public; 
grant select on SEQ_TB_PMTEF to public;   