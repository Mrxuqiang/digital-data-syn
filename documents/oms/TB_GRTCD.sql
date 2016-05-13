/*
================================================================================
��ṹ����:TB_GRTCD
��ṹ����:����ؼ�����ϱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCD;
drop table TB_GRTCD;
create table TB_GRTCD  (
   GRTCD_ID             INTEGER         NOT NULL,  /*�ؼ������ID       */   
   GRTCD001             VARCHAR2(20),              /*�ؼ��ֱ��         */   
   GRTCD002             VARCHAR2(20),              /*�ؼ��ֱ��         */   
   GRTCD003             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD004             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD005             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD006             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD007             VARCHAR2(20),              /*�ؼ��ֱ��         */    
   GRTCD008             VARCHAR2(20),              /*�ؼ��ֱ��         */ 
   GRTCD009             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD010             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD011             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD012             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD013             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD014             VARCHAR2(20),              /*�ؼ��ֱ��         */
   GRTCD015             VARCHAR2(20),              /*�ؼ��ֱ��         */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */   
   constraint PK_TB_GRTCD primary key (GRTCD_ID)
);
create sequence SEQ_TB_GRTCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCD to public;
grant index  on TB_GRTCD to public;
grant update on TB_GRTCD to public; 
grant delete on TB_GRTCD to public;  
grant insert on TB_GRTCD to public; 
grant select on SEQ_TB_GRTCD to public; 