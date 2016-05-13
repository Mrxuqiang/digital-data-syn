/*
================================================================================
��ṹ����:TB_DRPCD
��ṹ����:����ؼ�����ϱ�
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCD;
drop table TB_DRPCD;
create table TB_DRPCD  (
   DRPCD_ID             INTEGER         NOT NULL,  /*�ؼ������ID       */   
   DRPCD001             VARCHAR2(20),              /*�ؼ��ֱ��         */   
   DRPCD002             VARCHAR2(20),              /*�ؼ��ֱ��         */   
   DRPCD003             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD004             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD005             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD006             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD007             VARCHAR2(20),              /*�ؼ��ֱ��         */    
   DRPCD008             VARCHAR2(20),              /*�ؼ��ֱ��         */ 
   DRPCD009             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD010             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD011             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD012             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD013             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD014             VARCHAR2(20),              /*�ؼ��ֱ��         */
   DRPCD015             VARCHAR2(20),              /*�ؼ��ֱ��         */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */   
   constraint PK_TB_DRPCD primary key (DRPCD_ID)
);
create sequence SEQ_TB_DRPCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCD to public;
grant index  on TB_DRPCD to public;
grant update on TB_DRPCD to public; 
grant delete on TB_DRPCD to public;  
grant insert on TB_DRPCD to public; 
grant select on SEQ_TB_DRPCD to public; 