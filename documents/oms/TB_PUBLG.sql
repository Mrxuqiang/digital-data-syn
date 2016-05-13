/*
================================================================================
��ṹ����:TB_PUBLG
��ṹ����:�����������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBLG;
drop index AK_TB_PUBLG;
drop table TB_PUBLG;
create table TB_PUBLG  (
   PUBLG_ID             INTEGER                         not null,  /*�������ID                 */
   PUBLG001             VARCHAR2(16)                    not null,  /*����������               */
   PUBLG002             VARCHAR2(30)                    not null,  /*�����������               */
   PUBLG003             VARCHAR2(2)                     not null,  /*�����������               */
   PUBLG004             INTEGER                         not null,  /*�������ID                 */
   PUBLG005             INTEGER ,                                  /*�ϼ��������ID             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBLG primary key (PUBLG_ID)
);
create unique index AK_TB_PUBLG on TB_PUBLG (PUBLG001);
create sequence SEQ_TB_PUBLG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLG to public;
grant index  on TB_PUBLG to public;
grant update on TB_PUBLG to public; 
grant delete on TB_PUBLG to public;  
grant insert on TB_PUBLG to public; 
grant select on SEQ_TB_PUBLG to public;   