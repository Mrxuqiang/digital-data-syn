/*
================================================================================
��ṹ����:TB_PROEB
��ṹ����:�¼����Ͷ����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROEB;
drop index AK_TB_PROEB;
drop table TB_PROEB;
create table TB_PROEB  (
   PROEB_ID             INTEGER                         not null,  /*�¼�����ID      */
   PROEB001             VARCHAR2(8)                     not null,  /*�¼����ʹ���    */
   PROEB002             VARCHAR2(30),                              /*�¼���������    */ 
   PROEB003             VARCHAR2(100),                             /*��ע	     */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա        */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����    */                               
   CREATE_DATE          DATE,                                      /*��������        */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա        */
   MODI_DATE            DATE,                                      /*�޸�����        */
   FLAG                 NUMBER(1),                                 /*����״̬        */
   constraint PK_TB_PROEB primary key (PROEB_ID)
);
create unique index AK_TB_PROEB on TB_PROEB (PROEB001);
create sequence SEQ_TB_PROEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROEB to public;
grant index  on TB_PROEB to public;
grant update on TB_PROEB to public; 
grant delete on TB_PROEB to public;  
grant insert on TB_PROEB to public; 
grant select on SEQ_TB_PROEB to public;   

