/*
================================================================================
��ṹ����:TB_EXPAE
��ṹ����:������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_EXPAE;
drop index AK_TB_EXPAE;
drop table TB_EXPAE;
create table TB_EXPAE  (
   EXPAE_ID             INTEGER                         not null,  /*������ϸID       */
   EXPAE001             INTEGER                         not null,  /*��������ID       */
   EXPAE002             VARCHAR2(255)                   not null,  /*ժҪ              */
   EXPAE003             INTEGER                         not null,  /*����          */
   EXPAE004             INTEGER                         not null,  /*��֧�춯��        */
   EXPAE005             INTEGER                         not null,  /*��ƿ�Ŀ          */
   EXPAE006             NUMBER(16,2),                              /*������          */ 
   EXPAE007             NUMBER(16,2),                              /*���һ�����      */ 
   EXPAE008             NUMBER(16,2),                              /*ԭ�ҽ�����       */ 
   EXPAE009             NUMBER(16,2),                              /*���ҽ�����       */       
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_EXPAE primary key (EXPAE_ID)
);
create sequence SEQ_TB_EXPAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAE to public;
grant index  on TB_EXPAE to public;
grant update on TB_EXPAE to public; 
grant delete on TB_EXPAE to public;  
grant insert on TB_EXPAE to public; 
grant select on SEQ_TB_EXPAE to public;   