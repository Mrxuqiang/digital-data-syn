/*
================================================================================
��ṹ����:TB_CONBG
��ṹ����:��ͬһ���Թ̶��ѱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_CONBG;
drop index AK_TB_CONBG;
drop table TB_CONBG;
create table TB_CONBG  (
   CONBG_ID             INTEGER                         not null,  /*��ͬһ���Թ̶���ID  */
   CONBG001             INTEGER                         not null,  /*��ͬID              */
   CONBG002             INTEGER                         not null,  /*����ID              */
   CONBG003             INTEGER                         not null,  /*��ʽID              */
   CONBG004             DATE                            not null,  /*��������            */
   CONBG005             NUMBER(12,2)                    not null,  /*��׼����            */
   CONBG006             NUMBER(12,2)                    not null,  /*���ñ�׼            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_CONBG primary key (CONBG_ID)
);
create unique index AK_TB_CONBG on TB_CONBG (CONBG001,CONBG002);
create sequence SEQ_TB_CONBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBG to public;
grant index  on TB_CONBG to public;
grant update on TB_CONBG to public; 
grant delete on TB_CONBG to public;  
grant insert on TB_CONBG to public; 
grant select on SEQ_TB_CONBG to public;   