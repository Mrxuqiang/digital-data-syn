/*
================================================================================
表结构代码:TB_AWBAD
表结构名称:凭证模板表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AWBAD;
drop index AK_TB_AWBAD;
drop table TB_AWBAD;
create table TB_AWBAD  (
   AWBAD_ID             INTEGER                         not null,  /*凭证模板表ID     */
   AWBAD001             INTEGER                         not null,  /*模块ID                */
   AWBAD002             INTEGER                         not null,  /*程序ID             */  
   AWBAD003             INTEGER,                                   /*单别ID             */
   AWBAD004             INTEGER,                                   /*凭证类别ID             */
   AWBAD005             VARCHAR2(1),                               /*处理方式             */
   AWBAD006             VARCHAR2(200),                             /*制单人公式             */   
   AWBAD007             VARCHAR2(200),                             /*制单日期公式             */
   AWBAD008             INTEGER,                                   /*公司ID                  */
   AWBAD009             INTEGER,                                   /*会计主体ID              */  
   AWBAD010             INTEGER,                                   /*核算账套ID              */ 
   AWBAD011             VARCHAR2(255),                             /*备注                    */
   AWBAD012             VARCHAR2(200),                             /*制单人公式描述       */  
   AWBAD013             VARCHAR2(200),                             /*制单日期公式描述     */                
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_AWBAD primary key (AWBAD_ID)
);
create unique index AK_TB_AWBAD on TB_AWBAD (AWBAD009,AWBAD010,AWBAD002,AWBAD003);
create sequence SEQ_TB_AWBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AWBAD to public;
grant index  on TB_AWBAD to public;
grant update on TB_AWBAD to public; 
grant delete on TB_AWBAD to public;  
grant insert on TB_AWBAD to public; 
grant select on SEQ_TB_AWBAD to public;   