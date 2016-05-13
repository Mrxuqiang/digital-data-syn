/*
================================================================================
��ṹ����:TB_SYSYH
��ṹ����: ��ǩ������ڵ��ж�����
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYH;
create table TB_SYSYH  (
   SYSYH001        VARCHAR2(50)    not null,  /*��ǩ�������̱�� */
   SYSYH002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYH003        NUMBER(3),                 /*�������         */
   SYSYH004        VARCHAR2(30),              /*������           */
   SYSYH005        VARCHAR2(50),              /*��������         */
   SYSYH006        VARCHAR2(30),              /*������           */
   SYSYH007        VARCHAR2(10),              /*���             */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYH primary key (SYSYH001,SYSYH002,SYSYH003)
);
grant select,index,update,delete,insert on TB_SYSYH to public;
