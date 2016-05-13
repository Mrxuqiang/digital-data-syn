/*
================================================================================
��ṹ����:TB_INVFB
��ṹ����:�հ��̵�����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_INVFB;
drop index AK_TB_INVFB;
drop table TB_INVFB;
create table TB_INVFB  (
   INVFB_ID         INTEGER                    not null,           /*�̵��ID        */
   INVFB001         INTEGER                    not null,           /*�̵����      */
   INVFB002         VARCHAR2(30)               not null,           /*�̵����      */
   INVFB003         INTEGER                    not null,           /*�̵�ƻ�����    */
   INVFB004         DATE                       not null,           /*�̵�����        */
   INVFB005         INTEGER                    not null,           /*�̵���֯        */
   INVFB006         INTEGER                    not null,           /*�̵�ֿ�        */
   INVFB007        VARCHAR2(255),                                       /*�̵��λID*/
   INVFB007C1    VARCHAR2(255),                                       /*�̵��λ����        */
   INVFB008        VARCHAR2(255),                                       /*����ID          */
   INVFB008C1     VARCHAR2(255),                                       /*��������          */
   INVFB009        VARCHAR2(255),                                     /*����ID          */
   INVFB009C1     VARCHAR2(255),                                     /*��������          */
   INVFB010          VARCHAR2(255),                                   /*Ʒ��ID          */
  INVFB010C1       VARCHAR2(255),                                   /*Ʒ������          */
   INVFB011         INTEGER,                                       /*�̵���ID        */
   CREATE_USER      VARCHAR2(12),                                  /*������Ա        */
   USER_GROUP       VARCHAR2(12),                                  /*������Ա����    */                               
   CREATE_DATE      DATE,                                          /*��������        */
   MODIFIER         VARCHAR2(12),                                  /*�޸���Ա        */
   MODI_DATE        DATE,                                          /*�޸�����        */
   FLAG             NUMBER(1),                                     /*����״̬        */
   constraint PK_TB_INVFB primary key (INVFB_ID)
);
create unique index AK_TB_INVFB on TB_INVFB (INVFB_ID,INVFB001, INVFB002,INVFB003);
create sequence SEQ_TB_INVFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFB to public;
grant index  on TB_INVFB to public;
grant update on TB_INVFB to public; 
grant delete on TB_INVFB to public;  
grant insert on TB_INVFB to public; 
grant select on SEQ_TB_INVFB to public;   