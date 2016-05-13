/*
================================================================================
��ṹ����:TB_PUBBA
��ṹ����:�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBBA;
drop index AK_TB_PUBBA;
drop table TB_PUBBA;
create table TB_PUBBA  (
   PUBBA_ID             INTEGER                         not null,  /*����ID             */
   PUBBA001             VARCHAR2(4)                     not null,  /*�������           */
   PUBBA002             VARCHAR2(20)                    not null,  /*��������           */
   PUBBA003             VARCHAR2(100),                             /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_PUBBA primary key (PUBBA_ID)
);
create unique index AK_TB_PUBBA on TB_PUBBA (PUBBA001);
create sequence SEQ_TB_PUBBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBA to public;
grant index  on TB_PUBBA to public;
grant update on TB_PUBBA to public; 
grant delete on TB_PUBBA to public;  
grant insert on TB_PUBBA to public; 
grant select on SEQ_TB_PUBBA to public;   