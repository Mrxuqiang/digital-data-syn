/*
================================================================================
��ṹ����:TB_SYSYk
��ṹ����: �����켣��
��ṹĿ��:
================================================================================
*/
drop table TB_SYSYk;
create table TB_SYSYk  (
   sysyk001        varchar2(100)    not null,    /*��ҵΨһ��� */
   sysyk002        varchar2(20)     not null,    /*��ҵ���     */
   sysyk003        varchar2(20)     not null,     /*����Ա����� */
   Sysyk004        varchar2(250)    not null,    /*�ڵ���     */
   Sysyk005        VARCHAR2(30)      null,    /*������ɫ  */
   Sysyk006        VARCHAR2(99)     not null,    /*��������    */
   Sysyk007        VARCHAR2(99)     not null,    /*������֧    */
   Sysyk008        VARCHAR2(99)     not null,    /*������֧���*/
   Sysyk009        VARCHAR2(20),                 /*����ʱ��     */
   Sysyk010        Char(1)          default 0,   /*�������Ƿ�ͨ�� 0Ĭ��״̬  W������ Y����ͨ�� Z �������*/ 
   Sysyk011        Char(1),                      /*�����Ƿ�ͨ��  */ 
   Sysyk012        VARCHAR2(16)    not null,     /*������������  */  
   Sysyk013        Integer         not null,     /*��ǩ���  */  
   Sysyk014        VARCHAR2(10)    not null,     /*�ڵ�����  */           
   FLAG            INTEGER          default 0,   /*����״̬      */
   constraint PK_TB_SYSYK primary key (Sysyk001,Sysyk002,Sysyk003,Sysyk004,Sysyk005,Sysyk006,Sysyk007,Sysyk008)
);
grant select,index,update,delete,insert on TB_SYSYk to public;

