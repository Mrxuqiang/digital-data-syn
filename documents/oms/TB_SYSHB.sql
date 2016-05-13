/*
================================================================================
��ṹ����:TB_SYSHB
��ṹ����:���ݷ���Ȩ�����û���
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_SYSHB;
drop index AK_TB_SYSHB;
drop table TB_SYSHB;
create table TB_SYSHB  (
   SYSHB_ID             INTEGER                         not null,  /*����Ȩ�����û�ID */
   SYSHB001             INTEGER                         not null,  /*����Ȩ����ID     */
   SYSHB002             INTEGER                         not null,  /*�û�ID           */
   SYSHB003             VARCHAR2(255),				   /*Ԥ��             */
   SYSHB004             VARCHAR2(2),				   /*Ԥ��             */
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */                               
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                 /*����״̬         */
   constraint PK_TB_SYSHB primary key (SYSHB_ID)
);
create sequence SEQ_TB_SYSHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHB to public;
grant index  on TB_SYSHB to public;
grant update on TB_SYSHB to public; 
grant delete on TB_SYSHB to public;  
grant insert on TB_SYSHB to public; 
grant select on SEQ_TB_SYSHB to public;   