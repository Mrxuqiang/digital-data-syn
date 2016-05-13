/*
================================================================================
��ṹ����:TB_DRPBE
��ṹ����:��������
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPBE;
drop index AK_TB_DRPBE;
drop table TB_DRPBE;
create table TB_DRPBE  (
   DRPBE_ID             INTEGER                         not null,  /* ������ID                 */
   DRPBE001             INTEGER,                                   /* ����ID                   */
   DRPBE002             INTEGER,                                   /* ����ģ��ID                 */
   DRPBE003             INTEGER,                                   /* ���˹�˾ID                 */    
   DRPBE004             INTEGER,                                   /* ������λID               */
   DRPBE005             INTEGER,                                   /* �Է���λID                 */  
   DRPBE006             DATE,                                      /* ����ڼ�                   */   
   DRPBE007             VARCHAR2(1),                               /* �Ƿ�Է�                 */  
   DRPBE008             DATE,                                      /* ����ʱ��                 */  
   DRPBE009             VARCHAR2(1),                               /* �����˹���             */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPBE primary key (DRPBE_ID)
);
create sequence SEQ_TB_DRPBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBE to public;
grant index  on TB_DRPBE to public;
grant update on TB_DRPBE to public; 
grant delete on TB_DRPBE to public;  
grant insert on TB_DRPBE to public; 
grant select on SEQ_TB_DRPBE to public;   