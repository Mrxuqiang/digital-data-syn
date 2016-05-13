/*
================================================================================
��ṹ����:TB_SYSYG
��ṹ����: �����жϽڵ�ķ�֧
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYG;
create table TB_SYSYG  (
   SYSYG001        VARCHAR2(50)    not null,  /*�����߱��       */
   SYSYG002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYG003        NUMBER(3),                 /*�������         */
   SYSYG004        VARCHAR2(30),              /*������           */
   SYSYG005        VARCHAR2(30),              /*�ֶ���           */
   SYSYG006        VARCHAR2(10),              /*�ȽϹ�ϵ         */
   SYSYG007        VARCHAR2(300),             /*ֵ               */
   SYSYG008        VARCHAR2(30),              /*������           */
   SYSYG009        VARCHAR2(10),              /*���             */
   SYSYG010        NUMBER(2),                 /*�ֶ�����         */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYG primary key (SYSYG001,SYSYG002,SYSYG003)
);
grant select,index,update,delete,insert on TB_SYSYG to public;
