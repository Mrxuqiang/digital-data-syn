/*
================================================================================
��ṹ����:TB_SYSAE
��ṹ����:��������Ա�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSAE;
drop index AK_TB_SYSAE;
drop table TB_SYSAE;
create table TB_SYSAE  (
   SYSAE_ID             INTEGER                         not null,  /*��ԴID           */
   SYSAE001             INTEGER                         not null,  /*��ʽID           */
   SYSAE002             VARCHAR2(30)                    not null,  /*��Դ����         */
   SYSAE003             INTEGER                         not null,  /*����ID           */
   SYSAE004             VARCHAR2(60)                    not null,  /*��Դ����         */
   SYSAE005             VARCHAR2(80),                              /*��Դ˵��         */
   SYSAE006             DATE                            not null,  /*�춯����         */
   SYSAE007             VARCHAR2(60),                              /*��ʾ˵��         */
   SYSAE008             VARCHAR2(1),                               /*��Դ����         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSAE primary key (SYSAE_ID)
);
create unique index AK_TB_SYSAE on TB_SYSAE (SYSAE001,SYSAE002,SYSAE003);
create sequence SEQ_TB_SYSAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAE to public;
grant index  on TB_SYSAE to public;
grant update on TB_SYSAE to public; 
grant delete on TB_SYSAE to public;  
grant insert on TB_SYSAE to public; 
grant select on SEQ_TB_SYSAE to public;   