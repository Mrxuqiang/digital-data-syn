/*
================================================================================
��ṹ����:TB_SYSXC
��ṹ����: ��������������ɫ-���ݱ�
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXC;
create table TB_SYSXC  (
   SYSXC001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSXC002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXC003        VARCHAR2(30)    not null,  /*��ɫ���         */
   SYSXC004        VARCHAR2(50),              /*��ɫ����         */
   SYSXC091        VARCHAR2(30),              /*������ˮ         */
   SYSXC092        VARCHAR2(20),               /*��ҵ���         */
   SYSXC093        VARCHAR2(10),               /*����             */
   SYSXC094        VARCHAR2(30),               /*��ˮ���         */   
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSXC primary key (SYSXC001,SYSXC002,SYSXC091)
);
grant select,index,update,delete,insert on TB_SYSXC to public;