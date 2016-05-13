/*
================================================================================
��ṹ����:TB_EXPAD
��ṹ����:������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_EXPAD;
drop index AK_TB_EXPAD;
drop table TB_EXPAD;
create table TB_EXPAD  (
   EXPAD_ID             INTEGER                         not null,  /*������ϸID           */
   EXPAD001             INTEGER                         not null,  /*��������ID       */
   EXPAD002             VARCHAR2(255)                   not null,  /*ժҪ                */
   EXPAD003             INTEGER                         not null,  /*��֧�춯��           */
   EXPAD004             INTEGER                         not null,  /*��ƿ�Ŀ           */
   EXPAD005             NUMBER(16,2),                              /*�������       */
   EXPAD006             NUMBER(16,2),                              /*���ұ������   */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_EXPAD primary key (EXPAD_ID)
);
create sequence SEQ_TB_EXPAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAD to public;
grant index  on TB_EXPAD to public;
grant update on TB_EXPAD to public; 
grant delete on TB_EXPAD to public;  
grant insert on TB_EXPAD to public; 
grant select on SEQ_TB_EXPAD to public;   