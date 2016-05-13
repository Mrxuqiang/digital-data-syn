/*
================================================================================
��ṹ����:TB_SYSXD
��ṹ����: ��������������ɫ-���ݱ�
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXD;
create table TB_SYSXD  (
   SYSXD001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSXD002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXD003        VARCHAR2(30)    not null,  /*��ɫ���         */
   SYSXD004        VARCHAR2(30),              /*�û��˺�         */
   SYSXD005        VARCHAR2(50),              /*�û�����         */
   SYSXD091        VARCHAR2(30),              /*������ˮ         */
   SYSXD092        VARCHAR2(20),              /*��ҵ���         */
   SYSXD093        VARCHAR2(10),              /*����             */
   SYSXD094        VARCHAR2(30),              /*��ҵ��ˮ��       */   
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSXD primary key (SYSXD001,SYSXD002,SYSXD003,SYSXD004,SYSXD091)
);
grant select,index,update,delete,insert on TB_SYSXD to public;
