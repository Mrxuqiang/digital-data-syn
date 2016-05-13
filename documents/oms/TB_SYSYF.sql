/*
================================================================================
��ṹ����:TB_SYSYF
��ṹ����: ���̽ڵ����
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYF;
create table TB_SYSYF  (
   SYSYF001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSYF002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYF003        NUMBER(3),                 /*���             */
   SYSYF004        VARCHAR2(50),              /*����������       */
   SYSYF005        VARCHAR2(50),              /*��������һ�˽ڵ����� */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYF primary key (SYSYF001,SYSYF002,SYSYF003)
);
grant select,index,update,delete,insert on TB_SYSYF to public;
