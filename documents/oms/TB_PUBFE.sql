/*
================================================================================
��ṹ����:TB_PUBFE
��ṹ����:�Զ�������ˮ��¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PUBFE;
drop index AK_TB_PUBFE;
drop table TB_PUBFE;
create table TB_PUBFE  (
   PUBFE_ID             INTEGER                         not null,  /*�Զ�������ˮID      */
   PUBFE001             INTEGER                         not null,  /*��˾ID              */
   PUBFE002             INTEGER                         not null,  /*��������ID              */
   PUBFE003             INTEGER                         not null,  /*�����              */
   PUBFE004             INTEGER                         not null,  /*�����              */
   PUBFE005             INTEGER                         not null,  /*��ˮ��              */
   PUBFE006             INTEGER                         not null,  /*ƾ֤����              */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_PUBFE primary key (PUBFE_ID)
);
create unique index AK_TB_PUBFE on TB_PUBFE (PUBFE001,PUBFE002,PUBFE003,PUBFE004,PUBFE005,PUBFE006);
create sequence SEQ_TB_PUBFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBFE to public;
grant index  on TB_PUBFE to public;
grant update on TB_PUBFE to public; 
grant delete on TB_PUBFE to public;  
grant insert on TB_PUBFE to public; 
grant select on SEQ_TB_PUBFE to public;   
