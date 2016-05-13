/*
================================================================================
��ṹ����:TB_SYSCB
��ṹ����:�û��˵������Ա�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSCB;
drop index AK_TB_SYSCB;
drop table TB_SYSCB;
create table TB_SYSCB  (
   SYSCB_ID             INTEGER                         not null,  /*�˵�������ID     */
   SYSCB001             INTEGER                         not null,  /*�˵�ID           */
   SYSCB002             INTEGER                         not null,  /*����ID           */
   SYSCB003             VARCHAR2(60)                    not null,  /*�˵�����         */
   SYSCB004             VARCHAR2(80),                              /*�˵�˵��         */
   SYSCB005             DATE,                                      /*�춯����         */
   SYSCB006             VARCHAR2(60),                              /*��ʾ˵��         */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER(1),                                 /*����״̬         */
   constraint PK_TB_SYSCB primary key (SYSCB_ID)
);
create unique index AK_TB_SYSCB on TB_SYSCB (SYSCB001,SYSCB002);
create sequence SEQ_TB_SYSCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCB to public;
grant index  on TB_SYSCB to public;
grant update on TB_SYSCB to public; 
grant delete on TB_SYSCB to public;  
grant insert on TB_SYSCB to public; 
grant select on SEQ_TB_SYSCB to public;   