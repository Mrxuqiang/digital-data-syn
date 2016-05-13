/*
================================================================================
��ṹ����:TB_SYSXM
��ṹ����:�����켣��
��ṹĿ��:
================================================================================
*/
drop table TB_SYSXM;
create table TB_SYSXM  (
   SYSXM001        VARCHAR2(50)    not null,  /*���̽ڵ���     */
   SYSXM002        VARCHAR2(20)    not null,  /*���̱��         */
   SYSXM003        VARCHAR2(30),              /*��ˮ��*/
   SYSXM004        integer,                /*����״̬  ����״̬ 0 Ĭ�� 1 ������ 2 ����ͨ�� 3�������     */
   SYSXM005        VARCHAR2(500),             /*��ע*/
   SYSXM006        VARCHAR2(30),              /*�����˱�� */
   SYSXM007        DATE,                      /*����ʱ�� */
   SYSXM008        VARCHAR2(30),              /*��ҵ��*/   
   SYSXM009        VARCHAR2(30),              /*��ҵ������*/      
   SYSXM010        VARCHAR2(30),              /*������*/ 
   SYSXM011        integer,                   /*�������*/          
   flag            integer,                    
   constraint PK_TB_SYSXM primary key (SYSXM001,SYSXM002,SYSXM003,SYSXM004,SYSXM006,SYSXM007)
);
grant select,index,update,delete,insert on TB_SYSXM to public;


