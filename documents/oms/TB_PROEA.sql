/*
================================================================================
��ṹ����:TB_PROEA
��ṹ����:��λ�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_PROEA;
drop index AK_TB_PROEA;
drop table TB_PROEA;
create table TB_PROEA  (
   PROEA_ID             INTEGER                         not null,  /*��λID          */
   PROEA001             VARCHAR2(8)                     not null,  /*��λ����        */
   PROEA002             VARCHAR2(30),                              /*��λ����	     */ 
   PROEA003             VARCHAR2(100),                             /*��λ˵��	     */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա        */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����    */                               
   CREATE_DATE          DATE,                                      /*��������        */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա        */
   MODI_DATE            DATE,                                      /*�޸�����        */
   FLAG                 NUMBER(1),                                 /*����״̬        */
   constraint PK_TB_PROEA primary key (PROEA_ID)
);
create unique index AK_TB_PROEA on TB_PROEA (PROEA001);
create sequence SEQ_TB_PROEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROEA to public;
grant index  on TB_PROEA to public;
grant update on TB_PROEA to public; 
grant delete on TB_PROEA to public;  
grant insert on TB_PROEA to public; 
grant select on SEQ_TB_PROEA to public;   

