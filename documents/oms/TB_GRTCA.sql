/*
================================================================================
��ṹ����:TB_GRTCA      iufo_measure_data_ak7vzznp  iufo_measure_data_ak7vzznp
��ṹ����:����Ŀ¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_GRTCA;
--drop index AK_TB_GRTCA;
drop table TB_GRTCA;
create table TB_GRTCA  (
   GRTCA_ID             INTEGER         not null,  /*ID                 */
   GRTCA001             INTEGER,                   /*��ID               */   
   GRTCA002             VARCHAR2(50),              /*Ŀ¼����           */
   GRTCA003             VARCHAR2(1),               /*�Ƿ�ϲ�����Ŀ¼   */ 
   GRTCA004             VARCHAR2(1),               /*�Ƿ�ģ��           */    
   GRTCA005             VARCHAR2(1),               /*�Ƿ�ϵͳԤ��       */    
   GRTCA006             VARCHAR2(1),               /*Ŀ¼����           */
   GRTCA007             INTEGER,                   /*��˾ID             */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */   
   constraint PK_TB_GRTCA primary key (GRTCA_ID)
);
create sequence SEQ_TB_GRTCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCA to public;
grant index  on TB_GRTCA to public;
grant update on TB_GRTCA to public; 
grant delete on TB_GRTCA to public;  
grant insert on TB_GRTCA to public; 
grant select on SEQ_TB_GRTCA to public;   