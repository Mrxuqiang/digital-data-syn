/*
================================================================================
��ṹ����:TB_DRPCC
��ṹ����:����ؼ���
��ṹĿ��:
================================================================================
*/

drop table TB_DRPCC;
create table TB_DRPCC  (
   DRPCC001             VARCHAR2(20)    not null,  /*�ؼ��ֱ��         */   
   DRPCC002             VARCHAR2(30),              /*�ؼ�������         */   
   DRPCC003             VARCHAR2(200),             /*�ؼ���ע��         */
   DRPCC004             NUMBER(5),                 /*����               */
   DRPCC005             NUMBER(5),                 /*����               */
   DRPCC006             VARCHAR2(1)                /*����               */
   DRPCC007             VARCHAR2(1),               /*�Ƿ�ϵͳԤ��       */    
   DRPCC008             VARCHAR2(1),               /*�Ƿ�ͣ��           */ 
   DRPCC009             VARCHAR2(1),               /*�Ƿ�˽��           */
   DRPCC010             VARCHAR2(30),              /*˽�йؼ����������� */
   DRPCC011             VARCHAR2(10),              /*�汾��             */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */   
   constraint PK_TB_DRPCC primary key (DRPCC001)
);
grant select on TB_DRPCC to public;
grant index  on TB_DRPCC to public;
grant update on TB_DRPCC to public; 
grant delete on TB_DRPCC to public;  
grant insert on TB_DRPCC to public; 
