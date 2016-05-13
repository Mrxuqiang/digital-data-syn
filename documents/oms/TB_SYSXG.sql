/*
================================================================================
��ṹ����:TB_SYSXG
��ṹ����: �����жϽڵ�ķ�֧
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXG;
create table TB_SYSXG  (
   SYSXG001        VARCHAR2(50)    not null,  /*�����߱��       */
   SYSXG002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXG003        NUMBER(3),                 /*�������         */
   SYSXG004        VARCHAR2(30),              /*������           */
   SYSXG005        VARCHAR2(30),              /*�ֶ���           */
   SYSXG006        VARCHAR2(10),              /*�ȽϹ�ϵ         */
   SYSXG007        VARCHAR2(3000),             /*ֵ               */
   SYSXG008        VARCHAR2(30),              /*������           */
   SYSXG009        VARCHAR2(10),              /*���             */
   SYSXG010        NUMBER(2),                 /*�ֶ�����         */
   SYSXG091        VARCHAR2(30),                    /*������ˮ         */
   SYSXG092        VARCHAR2(20),               /*��ҵ���         */
   SYSXG093        VARCHAR2(10),               /*����             */
   SYSXG094        VARCHAR2(30),               /*��ҵ���̱��     */   
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSXG primary key (SYSXG001,SYSXG002,SYSXG003,SYSXG091)
);
grant select,index,update,delete,insert on TB_SYSXG to public;
