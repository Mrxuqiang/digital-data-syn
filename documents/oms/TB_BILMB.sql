/*
================================================================================
��ṹ����:TB_BILMB
��ṹ����:�������÷�̯�������ӱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_BILMB;
drop index AK_TB_BILMB;
drop table TB_BILMB;
create table TB_BILMB  (
   BILMB_ID             INTEGER                         not null,  /*�������÷�̯��������ϸID */
   BILMB001             INTEGER                         not null,  /*�������÷�̯��ID     */
   BILMB002             INTEGER                         not null,  /*�̻�ID               */
   BILMB003             INTEGER                         not null,  /*��ͬID               */
   BILMB004             INTEGER                         not null,  /*Ʒ��ID               */
   BILMB005             INTEGER                         not null,  /*չλID               */
   BILMB006             NUMBER(12,2),                              /*�������             */ 
   BILMB007             NUMBER(12,2),                              /*�̻��е�����         */ 
   BILMB008             NUMBER(12,2),                              /*��˾�е�����         */ 
   BILMB009             NUMBER(12,2),                              /*��˾�е�����Ӫ����   */ 
   BILMB010             NUMBER(12,2),                              /*�̻��е����ò��� = �̻��е����� - ��һ�ʷ���     */ 
   BILMB011             NUMBER(12,2),                              /*��˾�е����ò���      */ 
   BILMB012             NUMBER(12,2),                              /*��˾�е�����Ӫ�������*/ 
   BILMB013             NUMBER(12,2),                              /*��Ż����         */ 
   BILMB014             NUMBER(12,2),                              /*��Żݹ����       */ 
   BILMB015             NUMBER(12,2),                              /*����Ӫ�����Ż�       */ 
   BILMB016             DATE,                                      /*SAP��������       */ 
   CREATE_USER          VARCHAR2(12),                              /*������Ա             */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����         */                               
   CREATE_DATE          DATE,                                      /*��������             */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա             */
   MODI_DATE            DATE,                                      /*�޸�����             */
   FLAG                 NUMBER(1),                                 /*����״̬             */
   constraint PK_TB_BILMB primary key (BILMB_ID)
);
create unique index AK_TB_BILMB on TB_BILMB (BILMB001,BILMB002,BILMB003);
create sequence SEQ_TB_BILMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMB to public;
grant index  on TB_BILMB to public;
grant update on TB_BILMB to public; 
grant delete on TB_BILMB to public;  
grant insert on TB_BILMB to public; 
grant select on SEQ_TB_BILMB to public;   