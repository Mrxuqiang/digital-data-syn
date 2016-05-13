/*
================================================================================
��ṹ����:TB_DRPAE
��ṹ����:���������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPAE;
drop index AK_TB_DRPAE;
drop table TB_DRPAE;
create table TB_DRPAE  (
   DRPAE_ID             INTEGER                         not null,  /*����������ID       */
   DRPAE001             INTEGER                         not null,  /*����������ID       */   
   DRPAE002             INTEGER                         not null,  /*����ģ��ID         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPAE primary key (DRPAE_ID)
);
create sequence SEQ_TB_DRPAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAE to public;
grant index  on TB_DRPAE to public;
grant update on TB_DRPAE to public; 
grant delete on TB_DRPAE to public;  
grant insert on TB_DRPAE to public; 
grant select on SEQ_TB_DRPAE to public;   