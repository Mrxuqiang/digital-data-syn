/*
================================================================================
��ṹ����:TB_SYSXF
��ṹ����: ���̽ڵ����
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXF;
create table TB_SYSXF  (
   SYSXF001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSXF002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXF003        NUMBER(3),                 /*���             */
   SYSXF004        VARCHAR2(50),              /*����������       */
   SYSXF005        VARCHAR2(50),              /*��������һ�˽ڵ����� */
   SYSXF091        VARCHAR2(30),                    /*������ˮ         */
   SYSXF092        VARCHAR2(20),               /*��ҵ���         */
   SYSXF093        VARCHAR2(10),               /*����             */
   SYSXF094        VARCHAR2(30),               /*��ҵ��ˮ��       */   
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSXF primary key (SYSXF001,SYSXF002,SYSXF003,SYSXF091)
);
grant select,index,update,delete,insert on TB_SYSXF to public;
