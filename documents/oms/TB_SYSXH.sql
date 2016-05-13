/*
================================================================================
��ṹ����:TB_SYSXH
��ṹ����: ��ǩ������ڵ��ж�����
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXH;
create table TB_SYSXH  (
   SYSXH001        VARCHAR2(50)    not null,  /*��ǩ�������̱�� */
   SYSXH002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXH003        NUMBER(3),                 /*�������         */
   SYSXH004        VARCHAR2(30),              /*������           */
   SYSXH005        VARCHAR2(50),              /*��������         */
   SYSXH006        VARCHAR2(30),              /*������           */
   SYSXH007        VARCHAR2(10),              /*���             */
   SYSXH091        VARCHAR2(30),                    /*������ˮ         */
   SYSXH092        VARCHAR2(20),               /*��ҵ���         */
   SYSXH093        VARCHAR2(10),               /*����             */
   SYSXH094        VARCHAR2(10),               /*��ҵ��ˮ���     */   
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSXH primary key (SYSXH001,SYSXH002,SYSXH003,SYSXH091)
);
grant select,index,update,delete,insert on TB_SYSXH to public;
