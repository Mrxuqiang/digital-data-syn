/*
================================================================================
��ṹ����:TB_MEMAE
��ṹ����:ְҵ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMAE;
drop index AK_TB_MEMAE;
drop table TB_MEMAE;
create table TB_MEMAE  (
   MEMAE_ID             INTEGER                         not null,  /*ְҵID             */
   MEMAE001             VARCHAR2(4)                     not null,  /*ְҵ����           */
   MEMAE002             VARCHAR2(30)                    not null,  /*ְҵ����           */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_MEMAE primary key (MEMAE_ID)
);
create unique index AK_TB_MEMAE on TB_MEMAE (MEMAE001);
create sequence SEQ_TB_MEMAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAE to public;
grant index  on TB_MEMAE to public;
grant update on TB_MEMAE to public; 
grant delete on TB_MEMAE to public;  
grant insert on TB_MEMAE to public; 
grant select on SEQ_TB_MEMAE to public;   