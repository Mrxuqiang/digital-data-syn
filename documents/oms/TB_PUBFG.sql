/*
================================================================================
��ṹ����:TB_PUBFG
��ṹ����:�ʲ�������ˮ�ű�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFG;
drop index AK_TB_PUBFG;
drop table TB_PUBFG;
create table TB_PUBFG  (
   PUBFG_ID             INTEGER                         not null,  /*��ˮ��ID            */
   PUBFG001             INTEGER                         not null,  /*��˾ID              */
   PUBFG002             INTEGER ,                                  /*���ID              */
   PUBFG003             INTEGER ,                                  /*����ID              */
   PUBFG004             INTEGER                         not null,  /*��ˮ��              */  
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PUBFG primary key (PUBFG_ID)
);
create unique index AK_TB_PUBFG on TB_PUBFG (PUBFG001,PUBFG002,PUBFG003,PUBFG004,PUBFG005);
create sequence SEQ_TB_PUBFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFG to public;
grant index  on TB_PUBFG to public;
grant update on TB_PUBFG to public; 
grant delete on TB_PUBFG to public;  
grant insert on TB_PUBFG to public; 
grant select on SEQ_TB_PUBFG to public;   
