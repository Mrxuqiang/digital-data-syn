/*
================================================================================
��ṹ����:TB_DRPCB
��ṹ����:���������Ϣ��
��ṹĿ��:
================================================================================
*/

drop table TB_DRPCB;
create table TB_DRPCB  (
   DRPCB001             VARCHAR2(30)    not null,  /*�������           */   
   DRPCB002             VARCHAR2(50),              /*��������           */   
   DRPCB003             VARCHAR2(200),             /*����˵��           */
   DRPCB004             INTEGER,                   /*����Ŀ¼ID         */
   DRPCB005             VARCHAR2(1),               /*�Ƿ�ģ��           */    
   DRPCB006             VARCHAR2(1),               /*�Ƿ�ϵͳԤ��       */    
   DRPCB007             VARCHAR2(1),               /*�Ƿ��ڲ�������Ŀ�� */ 
   DRPCB008             VARCHAR2(1),               /*��������           */
   DRPCB009             INTEGER,                   /*�ؼ������         */
   DRPCB010             INTEGER,                   /*����ָ��ؼ������ */
   DRPCB011             VARCHAR2(10),              /*�汾��             */
   DRPCB012             CLOB,                      /*�����������       */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */
   constraint PK_TB_DRPCB primary key (DRPCB001)
);
grant select on TB_DRPCB to public;
grant index  on TB_DRPCB to public;
grant update on TB_DRPCB to public; 
grant delete on TB_DRPCB to public;  
grant insert on TB_DRPCB to public; 
