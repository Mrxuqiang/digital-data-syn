/*
================================================================================
��ṹ����:TB_HRBAE
��ṹ����:��˰�ص��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_HRBAE;
drop index AK_TB_HRBAE;
drop table TB_HRBAE;
create table TB_HRBAE  (
   HRBAE_ID             INTEGER                         not null,  /*���õص�ID         */
   HRBAE001             VARCHAR2(20)                    not null,  /*�ص�����           */
   HRBAE002             VARCHAR2(255)                   not null,  /*��ע               */
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_HRBAE primary key (HRBAE_ID)
);
create unique index AK_TB_HRAAE on TB_HRBAE (HRBAE001);
create sequence SEQ_TB_HRBAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAE to public;
grant index  on TB_HRBAE to public;
grant update on TB_HRBAE to public; 
grant delete on TB_HRBAE to public;  
grant insert on TB_HRBAE to public; 
grant select on SEQ_TB_HRBAE to public;   