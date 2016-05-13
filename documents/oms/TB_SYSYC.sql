/*
================================================================================
��ṹ����:TB_SYSYC
��ṹ����: ��������������ɫ
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYC;
create table TB_SYSYC  (
   SYSYC001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSYC002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYC003        VARCHAR2(30)    not null,  /*��ɫ���         */
   SYSYC004        VARCHAR2(50),              /*��ɫ����         */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYC primary key (SYSYC001,SYSYC002,SYSYC003)
);
grant select,index,update,delete,insert on TB_SYSYC to public;
