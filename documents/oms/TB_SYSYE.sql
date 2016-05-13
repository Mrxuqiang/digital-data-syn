/*
================================================================================
��ṹ����:TB_SYSYE
��ṹ����: ���̽ڵ����
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYE;
create table TB_SYSYE  (
   SYSYE001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSYE002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYE003        NUMBER(3),                 /*���             */
   SYSYE004        VARCHAR2(50),              /*����������       */
   SYSYE005        VARCHAR2(50),              /*��������һ�˽ڵ����� */
   SYSYE006        VARCHAR2(1),               /*�Ƿ��ʹ�         */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYE primary key (SYSYE001,SYSYE002,SYSYE003)
);
grant select,index,update,delete,insert on TB_SYSYE to public;
