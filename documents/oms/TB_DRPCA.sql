/*
================================================================================
��ṹ����:TB_DRPCA      iufo_measure_data_ak7vzznp  iufo_measure_data_ak7vzznp
��ṹ����:����Ŀ¼��
��ṹĿ��:
================================================================================
*/

drop sequence SEQ_TB_DRPCA;
--drop index AK_TB_DRPCA;
drop table TB_DRPCA;
create table TB_DRPCA  (
   DRPCA_ID             INTEGER         not null,  /*ID                 */
   DRPCA001             INTEGER,                   /*��ID               */   
   DRPCA002             VARCHAR2(50),              /*Ŀ¼����           */
   DRPCA003             VARCHAR2(1),               /*�Ƿ�ϲ�����Ŀ¼   */ 
   DRPCA004             VARCHAR2(1),               /*�Ƿ�ģ��           */    
   DRPCA005             VARCHAR2(1),               /*�Ƿ�ϵͳԤ��       */    
   DRPCA006             VARCHAR2(1),               /*Ŀ¼����           */
   DRPCA007             INTEGER,                   /*��˾ID             */
   CREATE_USER          VARCHAR2(12),              /*������Ա           */
   USER_GROUP           VARCHAR2(12),              /*������Ա����       */                               
   CREATE_DATE          DATE,                      /*��������           */
   MODIFIER             VARCHAR2(12),              /*�޸���Ա           */
   MODI_DATE            DATE,                      /*�޸�����           */
   FLAG                 NUMBER(1),                 /*����״̬           */   
   constraint PK_TB_DRPCA primary key (DRPCA_ID)
);
create sequence SEQ_TB_DRPCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCA to public;
grant index  on TB_DRPCA to public;
grant update on TB_DRPCA to public; 
grant delete on TB_DRPCA to public;  
grant insert on TB_DRPCA to public; 
grant select on SEQ_TB_DRPCA to public;   