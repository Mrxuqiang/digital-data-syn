/*
================================================================================
��ṹ����:TB_SYSYB
��ṹ����:���̽ڵ�
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYB;
create table TB_SYSYB  (
   SYSYB001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSYB002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSYB003        VARCHAR2(20),              /*�ڵ����� 18:������; 19����; 20���̿�ʼ; 21���̽���; 22��ǩ��ʼ; 23��ǩ����; 24���� */
   SYSYB004        NUMBER(2),                 /*��ǩ������ʽ     */
   SYSYB005        NUMBER(5),                 /*��ǩ����������� */
   SYSYB006        VARCHAR2(50),              /*�����ߵĿ�ʼ�����ӵĽڵ��� */
   SYSYB007        VARCHAR2(50),              /*�����ߵĽ��������ӵĽڵ��� */
   CREATE_USER     VARCHAR2(12),              /*������Ա         */
   USER_GROUP      VARCHAR2(12),              /*������Ա����     */                               
   CREATE_DATE     DATE,                      /*��������         */
   MODIFIER        VARCHAR2(12),              /*�޸���Ա         */
   MODI_DATE       DATE,                      /*�޸�����         */
   FLAG            INTEGER,                   /*����״̬         */
   constraint PK_TB_SYSYB primary key (SYSYB001,SYSYB002)
);
grant select,index,update,delete,insert on TB_SYSYB to public;
