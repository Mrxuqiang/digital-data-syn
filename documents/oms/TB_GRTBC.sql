/*
================================================================================
��ṹ����:TB_GRTBC
��ṹ����:����ƾ֤����
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTBC;
drop index AK_TB_GRTBC;
drop table TB_GRTBC;
create table TB_GRTBC  (
   GRTBC_ID             INTEGER                         not null,  /*����ƾ֤��ID             */
   GRTBC001             INTEGER                         not null,  /*����ID                   */
   GRTBC002             DATE,                                      /*����ڼ�                 */
   GRTBC003             DATE,                                      /*¼������                 */    
   GRTBC004             INTEGER,                                   /*ƾ֤��λID               */
   GRTBC005             VARCHAR2(1),                               /*ƾ֤����                 */  
   GRTBC006             INTEGER,                                   /*ƾ֤��                   */   
   GRTBC007             INTEGER,                                   /*�Ƶ���ID                 */  
   GRTBC008             VARCHAR2(1),                               /*�Ƿ�����                 */  
   GRTBC009             VARCHAR2(1),                               /*�Ƿ����ϲ��������     */  
   GRTBC010             VARCHAR2(255),                             /*��ע                     */ 
   GRTBC011             INTEGER,                                   /*����ģ��ID               */           
   CREATE_USER          VARCHAR2(12),                              /*������Ա           */
   USER_GROUP           VARCHAR2(12),                              /*������Ա����       */                               
   CREATE_DATE          DATE,                                      /*��������           */
   MODIFIER             VARCHAR2(12),                              /*�޸���Ա           */
   MODI_DATE            DATE,                                      /*�޸�����           */
   FLAG                 NUMBER(1),                                 /*����״̬           */
   constraint PK_TB_GRTBC primary key (GRTBC_ID)
);
create unique index AK_TB_GRTBC on TB_GRTBC (GRTBC002,GRTBC005,GRTBC006);
create sequence SEQ_TB_GRTBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBC to public;
grant index  on TB_GRTBC to public;
grant update on TB_GRTBC to public; 
grant delete on TB_GRTBC to public;  
grant insert on TB_GRTBC to public; 
grant select on SEQ_TB_GRTBC to public;   