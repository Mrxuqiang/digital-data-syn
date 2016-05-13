/*
================================================================================
��ṹ����:TB_GRTAE
��ṹ����:���������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTAE;
drop index AK_TB_GRTAE;
drop table TB_GRTAE;
create table TB_GRTAE  (
   GRTAE_ID             INTEGER                         not null,  /*����������ID       */
   GRTAE001             INTEGER                         not null,  /*����������ID       */   
   GRTAE002             INTEGER                         not null,  /*����ģ��ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTAE primary key (GRTAE_ID)
);
create sequence SEQ_TB_GRTAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAE to public;
grant index  on TB_GRTAE to public;
grant update on TB_GRTAE to public; 
grant delete on TB_GRTAE to public;  
grant insert on TB_GRTAE to public; 
grant select on SEQ_TB_GRTAE to public;   