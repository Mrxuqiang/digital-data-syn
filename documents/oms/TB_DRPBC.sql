/*
================================================================================
��ṹ����:TB_DRPBC
��ṹ����:����ƾ֤����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPBC;
drop index AK_TB_DRPBC;
drop table TB_DRPBC;
create table TB_DRPBC  (
   DRPBC_ID             INTEGER                         not null,  /* ����ƾ֤��ID             */
   DRPBC001             INTEGER                         not null,  /* ����ID                   */
   DRPBC002             DATE,                                      /* ����ڼ�                 */
   DRPBC003             DATE,                                      /* ¼������                 */    
   DRPBC004             INTEGER,                                   /* ƾ֤��λID               */
   DRPBC005             VARCHAR2(1),                               /* ƾ֤����                 */  
   DRPBC006             INTEGER,                                   /* ƾ֤��                   */   
   DRPBC007             INTEGER,                                   /* �Ƶ���ID                 */  
   DRPBC008             VARCHAR2(1),                               /* �Ƿ�����                 */  
   DRPBC009             VARCHAR2(1),                               /* �Ƿ����ϲ��������     */  
   DRPBC010             VARCHAR2(255),                             /* ��ע                     */ 
   DRPBC011             INTEGER,                                   /* ����ģ��ID               */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_DRPBC primary key (DRPBC_ID)
);
create unique index AK_TB_DRPBC on TB_DRPBC (DRPBC002,DRPBC005,DRPBC006);
create sequence SEQ_TB_DRPBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBC to public;
grant index  on TB_DRPBC to public;
grant update on TB_DRPBC to public; 
grant delete on TB_DRPBC to public;  
grant insert on TB_DRPBC to public; 
grant select on SEQ_TB_DRPBC to public;   