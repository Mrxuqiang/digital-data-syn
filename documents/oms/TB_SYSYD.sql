/*
================================================================================
��ṹ����:TB_SYSYD
��ṹ����: ��������������ɫ
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYD;
create table TB_SYSYD  (
   SYSYD001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSYD002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYD003        VARCHAR2(30)    not null,  /*��ɫ���         */
   SYSYD004        VARCHAR2(30),              /*�û��˺�         */
   SYSYD005        VARCHAR2(50),              /*�û�����         */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYD primary key (SYSYD001,SYSYD002,SYSYD003,SYSYD004)
);
grant select,index,update,delete,insert on TB_SYSYD to public;
