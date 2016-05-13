/*
================================================================================
��ṹ����:TB_SYSYA
��ṹ����:�������̶���
��ṹĿ��:
================================================================================
*/

drop table TB_SYSYA;
create table TB_SYSYA  (
   SYSYA001             VARCHAR2(20)                    not null,  /*���̱��         */
   SYSYA002             VARCHAR2(255)                   not null,  /*��������         */
   SYSYA003             VARCHAR2(30),                              /*��ҵ���         */
   SYSYA004             CLOB,                                      /*����ͼ           */
   SYSYA005             VARCHAR2(16),                              /*Ӫ����֯����     */--add 2011-10-31 
   SYSYA006             VARCHAR2(16),                              /*��˾����         */--add 2011-10-31  
   SYSYA007             VARCHAR2(15),                              /*������           */--add 2011-10-31  
   SYSYA008             VARCHAR2(20),                              /*����������       */--add 2011-10-31 
   SYSYA009             VARCHAR2(20),                              /***�ֶ���       */--add 2011-10-31                  
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER                  default  0      ,  /*����״̬         */
   constraint PK_TB_SYSYA primary key (SYSYA001)
);
grant select,index,update,delete,insert on TB_SYSYA to public;
