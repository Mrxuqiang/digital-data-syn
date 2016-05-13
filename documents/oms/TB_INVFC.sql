/*
================================================================================
��ṹ����:TB_INVFC
��ṹ����:�հ��̵���ϸ��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFC;
drop index AK_TB_INVFC;
drop table TB_INVFC;
create table TB_INVFC  (
   INVFC_ID         INTEGER                     not null,              /*�հ��̵����ϸID     */
   INVFC001         INTEGER                     not null,              /*�հ��̵�����ID         */
   INVFC002         INTEGER                     not null,              /*��λ             */
   INVFC003         INTEGER                     not null,              /*��Ʒ����         */
   INVFC004         INTEGER,					             /*��Ʒ����         */
   INVFC005         VARCHAR2(30)                not null,              /*��Ʒ����         */
   INVFC006         INTEGER,                                           /*Ʒ��             */
   INVFC007         INTEGER,                                           /*Ʒ��             */
   INVFC008         INTEGER,                                           /*ά��1            */
   INVFC009         INTEGER,                                           /*ά��2            */
   INVFC010         INTEGER,                                           /*ά��3            */
   INVFC011         INTEGER,                                           /*ά��4            */
   INVFC012         INTEGER,                                           /*ά��5            */
   INVFC013         INTEGER,                    not null,              /*��λ             */
   INVFC014         NUMBER(12,2),                                      /*ʵ����           */
   CREATE_USER      VARCHAR2(12),                                      /*������Ա         */
   USER_GROUP       VARCHAR2(12),                                      /*������Ա����     */                               
   CREATE_DATE      DATE,                                              /*��������         */
   MODIFIER         VARCHAR2(12),                                      /*�޸���Ա         */
   MODI_DATE        DATE,                                              /*�޸�����         */
   FLAG             NUMBER(1),                                         /*����״̬         */
   constraint PK_TB_INVFC primary key (INVFC_ID)
);
create unique index AK_TB_INVFC on TB_INVFC (INVFC002,INVFC003);
create sequence SEQ_TB_INVFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFC to public;
grant index  on TB_INVFC to public;
grant update on TB_INVFC to public; 
grant delete on TB_INVFC to public;  
grant insert on TB_INVFC to public; 
grant select on SEQ_TB_INVFC to public;   