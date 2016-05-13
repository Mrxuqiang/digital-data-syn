/*
================================================================================
��ṹ����:TB_SYSXA
��ṹ����:�������̶��屸�ݱ�
��ṹĿ��:
================================================================================
*/
drop sequence SEQ_TB_SYSXA; 
drop table TB_SYSXA;
create table TB_SYSXA  (
   SYSXA001             VARCHAR2(20)                    not null,  /*���̱��         */
   SYSXA002             VARCHAR2(255)                   not null,  /*��������         */
   SYSXA003             VARCHAR2(30),                              /*��ҵ���         */
   SYSXA004             CLOB,                                      /*����ͼ           */
   SYSXA005             VARCHAR2(16),                              /*Ӫ����֯����     */--add 2011-10-31 
   SYSXA006             VARCHAR2(16),                              /*��˾����         */--add 2011-10-31  
   SYSXA007             VARCHAR2(15),                              /*������           */--add 2011-10-31  
   SYSXA008             VARCHAR2(20),                              /*����������       */--add 2011-10-31 
   SYSXA009             VARCHAR2(20),                             /*����              */--add 2011-10-31
   SYSXA010             VARCHAR2(30),                              /*�����˱��            */--add 2011-10-31   
   SYSXA091             VARCHAR2(30),                               /*������ˮ         */
   SYSXA092             VARCHAR2(20),                               /*��ҵ���         */
   SYSXA093             VARCHAR2(10),                               /*����             */
   SYSXA094             VARCHAR2(30),                               /**��ҵ�����ˮ��             */ 
   SYSXA095             VARCHAR2(30),                               /**��ʾ�ֶ�����             */        
   CREATE_USER          VARCHAR2(12),                              /*������Ա         */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����     */
   CREATE_DATE          DATE,                                      /*��������         */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա         */
   MODI_DATE            DATE,                                      /*�޸�����         */
   FLAG                 NUMBER,                                    /*����״̬         */
   constraint PK_TB_SYSXA primary key (SYSXA001,SYSXA091,SYSXA094)
);
create sequence SEQ_TB_SYSXA
minvalue 1
maxvalue 9999999999            
start with 1
increment by 1
nocache
cycle;
grant select,index,update,delete,insert on TB_SYSXA to public;
grant select on SEQ_TB_SYSXA to public ;