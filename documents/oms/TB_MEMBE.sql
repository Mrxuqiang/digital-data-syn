/*
================================================================================
��ṹ����:TB_MEMBE
��ṹ����:��Ա������������ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_MEMBE;
drop index AK_TB_MEMBE;
drop table TB_MEMBE;
create table TB_MEMBE  (
   MEMBE_ID             INTEGER                         not null,  /*��Ա������������ϸID*/
   MEMBE001             INTEGER                         not null,  /*��Ա��������ID      */
   MEMBE002             VARCHAR2(16)                    not null,  /*���۵�ID            */
   MEMBE003             NUMBER(12,2)                    not null,  /*���۽��            */
   MEMBE004             INTEGER                         not null,  /*���ID            */
   MEMBE005             NUMBER(12,2)                    not null,  /*������            */
   CREATE_USER          VARCHAR2(12),                              /*������Ա            */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����        */                               
   CREATE_DATE          DATE,                                      /*��������            */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա            */
   MODI_DATE            DATE,                                      /*�޸�����            */
   FLAG                 NUMBER(1),                                 /*����״̬            */
   constraint PK_TB_MEMBE primary key (MEMBE_ID)
);
create unique index AK_TB_MEMBE on TB_MEMBE (MEMBE001,MEMBE004);
create sequence SEQ_TB_MEMBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBE to public;
grant index  on TB_MEMBE to public;
grant update on TB_MEMBE to public; 
grant delete on TB_MEMBE to public;  
grant insert on TB_MEMBE to public; 
grant select on SEQ_TB_MEMBE to public;   