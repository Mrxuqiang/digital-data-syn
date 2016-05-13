/*
================================================================================
��ṹ����:TB_GRTCC
��ṹ����:����ؼ���
��ṹĿ��:
================================================================================
*/

drop table TB_GRTCC;
create table TB_GRTCC  (
   GRTCC001             VARCHAR2(20)    not null,  /*�ؼ��ֱ��         */   
   GRTCC002             VARCHAR2(30),              /*�ؼ�������         */   
   GRTCC003             VARCHAR2(200),             /*�ؼ���ע��         */
   GRTCC004             NUMBER(5),                 /*����               */
   GRTCC005             NUMBER(5),                 /*����               */
   GRTCC006             VARCHAR2(1)                /*����               */
   GRTCC007             VARCHAR2(1),               /*�Ƿ�ϵͳԤ��       */    
   GRTCC008             VARCHAR2(1),               /*�Ƿ�ͣ��           */ 
   GRTCC009             VARCHAR2(1),               /*�Ƿ�˽��           */
   GRTCC010             VARCHAR2(30),              /*˽�йؼ����������� */
   GRTCC011             VARCHAR2(10),              /*�汾��             */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */   
   constraint PK_TB_GRTCC primary key (GRTCC001)
);
grant select on TB_GRTCC to public;
grant index  on TB_GRTCC to public;
grant update on TB_GRTCC to public; 
grant delete on TB_GRTCC to public;  
grant insert on TB_GRTCC to public; 
