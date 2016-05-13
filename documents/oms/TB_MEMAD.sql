/*
================================================================================
��ṹ����:TB_MEMAD
��ṹ����:ѧ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAD;
drop index AK_TB_MEMAD;
drop table TB_MEMAD;
create table TB_MEMAD  (
   MEMAD_ID             INTEGER                         not null,  /*ѧ��ID             */
   MEMAD001             VARCHAR2(4)                     not null,  /*ѧ������           */
   MEMAD002             VARCHAR2(30)                    not null,  /*ѧ������           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAD primary key (MEMAD_ID)
);
create unique index AK_TB_MEMAD on TB_MEMAD (MEMAD001);
create sequence SEQ_TB_MEMAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAD to public;
grant index  on TB_MEMAD to public;
grant update on TB_MEMAD to public; 
grant delete on TB_MEMAD to public;  
grant insert on TB_MEMAD to public; 
grant select on SEQ_TB_MEMAD to public;   