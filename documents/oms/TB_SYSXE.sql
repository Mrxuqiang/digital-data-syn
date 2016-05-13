/*
================================================================================
��ṹ����:TB_SYSXE
��ṹ����: ���̽ڵ����
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXE;
create table TB_SYSXE  (
   SYSXE001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSXE002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXE003        NUMBER(3),                 /*���             */
   SYSXE004        VARCHAR2(50),              /*����������       */
   SYSXE005        VARCHAR2(50),              /*��������һ�˽ڵ����� */
   SYSXE006        VARCHAR2(1),               /*�Ƿ��ʹ�         */
   SYSXE091        VARCHAR2(30),                    /*������ˮ         */
   SYSXE092        VARCHAR2(20),               /*��ҵ���         */
   SYSXE093        VARCHAR2(10),               /*����             */
   SYSXE094        VARCHAR2(30),               /*��ҵ��ˮ��        */   
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSXE primary key (SYSXE001,SYSXE002,SYSXE003,SYSXE091)
);
grant select,index,update,delete,insert on TB_SYSXE to public;
