/*
================================================================================
��ṹ����:TB_SYSKB
��ṹ����:����Ȩ�ޱ�
��ṹĿ��:ȫ�ֱ�
================================================================================
*/

drop sequence SEQ_TB_SYSKB;
drop index AK_TB_SYSKB;
drop table TB_SYSKB;
create table TB_SYSKB  (
   SYSKB_ID             INTEGER                         not null,  /*����Ȩ�ޱ�id        */
   SYSKB001             INTEGER                         not null,  /*�û�id               */   
   SYSKB002             INTEGER                         not null,  /*Ӫ����֯id           */
   SYSKB003             INTEGER                         not null,  /*Ʒ��id            */
   SYSKB004             INTEGER                         not null,  /*����id              */
   SYSKB005             VARCHAR2(1),                               /*�Ƿ�Ĭ��             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����          */                               
   CREATE_DATE          DATE,                                      /*��������              */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա              */
   MODI_DATE            DATE,                                      /*�޸�����              */
   FLAG                 NUMBER,                                    /*����״̬              */
   constraint PK_TB_SYSKB primary key (SYSKB_ID)
);
create sequence SEQ_TB_SYSKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSKB to public;
grant index  on TB_SYSKB to public;
grant update on TB_SYSKB to public; 
grant delete on TB_SYSKB to public;  
grant insert on TB_SYSKB to public; 
grant select on SEQ_TB_SYSKB to public;   