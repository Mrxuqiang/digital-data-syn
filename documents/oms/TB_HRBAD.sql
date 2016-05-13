/*
================================================================================
��ṹ����:TB_HRBAD
��ṹ����:���ͳ��������ñ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAD;
drop index AK_TB_HRBAD;
drop table TB_HRBAD;
create table TB_HRBAD  (
   HRBAD_ID             INTEGER                         not null,  /*���ͳ������ID   */
   HRBAD001             VARCHAR2(8)                     not null,  /*���               */
   HRBAD002             VARCHAR2(30)                    not null,  /*����               */
   HRBAD003             VARCHAR2(255)                   not null,  /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAD primary key (HRBAD_ID)
);
create unique index AK_TB_HRBAD on TB_HRBAD (HRBAD001);
create sequence SEQ_TB_HRBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAD to public;
grant index  on TB_HRBAD to public;
grant update on TB_HRBAD to public; 
grant delete on TB_HRBAD to public;  
grant insert on TB_HRBAD to public; 
grant select on SEQ_TB_HRBAD to public;   