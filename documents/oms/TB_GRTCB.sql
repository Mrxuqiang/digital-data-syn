/*
================================================================================
��ṹ����:TB_GRTCB
��ṹ����:���������Ϣ��
��ṹĿ��:
================================================================================
*/

drop table TB_GRTCB;
create table TB_GRTCB  (
   GRTCB001             VARCHAR2(30)    not null,  /*�������           */   
   GRTCB002             VARCHAR2(50),              /*��������           */   
   GRTCB003             VARCHAR2(200),             /*����˵��           */
   GRTCB004             INTEGER,                   /*����Ŀ¼ID         */
   GRTCB005             VARCHAR2(1),               /*�Ƿ�ģ��           */    
   GRTCB006             VARCHAR2(1),               /*�Ƿ�ϵͳԤ��       */    
   GRTCB007             VARCHAR2(1),               /*�Ƿ��ڲ�������Ŀ�� */ 
   GRTCB008             VARCHAR2(1),               /*��������           */
   GRTCB009             INTEGER,                   /*�ؼ������         */
   GRTCB010             INTEGER,                   /*����ָ��ؼ������ */
   GRTCB011             VARCHAR2(10),              /*�汾��             */
   GRTCB012             CLOB,                      /*�����������       */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */
   constraint PK_TB_GRTCB primary key (GRTCB001)
);
grant select on TB_GRTCB to public;
grant index  on TB_GRTCB to public;
grant update on TB_GRTCB to public; 
grant delete on TB_GRTCB to public;  
grant insert on TB_GRTCB to public; 
