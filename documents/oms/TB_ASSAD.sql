/*
================================================================================
表结构代码:TB_ASSAD
表结构名称:固定资产新增子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_ASSAD;
drop index AK_TB_ASSAD;
drop table TB_ASSAD;
create table TB_ASSAD  (
   ASSAD_ID             INTEGER                         not null,   /*新增子表ID            */ 
   ASSAD001             INTEGER                         not null,   /*新增主表ID            */  
   ASSAD002             VARCHAR2(60),                               /*资产名称              */
   ASSAD003             INTEGER,                                    /*类别编码ID             */  
   ASSAD004             INTEGER,                                    /*管理部门ID             */  
   ASSAD005             NUMBER(4),                                  /*数量                   */    
   ASSAD006             INTEGER,                                    /*单位ID                 */ 
   ASSAD007             NUMBER(16,2),                               /*原币单价               */   
   ASSAD008             NUMBER(16,2),                               /*本币单价               */   
   ASSAD009             INTEGER,                                    /*税种ID                 */   
   ASSAD010             NUMBER(12,4),                               /*税率                   */  
   ASSAD011             NUMBER(16,2),                               /*原币税前金额           */  
   ASSAD012             NUMBER(16,2),                               /*本币税前金额           */ 
   ASSAD013             NUMBER(16,2),                               /*原币税额               */  
   ASSAD014             NUMBER(16,2),                               /*本币税额               */   
   ASSAD015             NUMBER(16,2),                               /*原币含税金额           */
   ASSAD016             NUMBER(16,2),                               /*本币含税金额           */  
   ASSAD017             NUMBER(16,2),                               /*备注                   */ 
   ASSAD018             INTEGER,                                    /*卡片编号               */
   ASSAD019             VARCHAR2(1),                                /*结账码                 */ 
   ASSAD020             NUMBER(22,2),                               /*原币结账金额           */
   ASSAD021             NUMBER(22,2),                               /*本币结账金额           */                                                                   
   CREATE_USER          VARCHAR2(12),                               /*建立人员               */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门           */                               
   CREATE_DATE          DATE,                                       /*建立日期               */
   MODIFIER             VARCHAR2(12),                               /*修改人员               */
   MODI_DATE            DATE,                                       /*修改日期               */
   FLAG                 NUMBER,                                  /*资料状态               */
   constraint PK_TB_ASSAD primary key (ASSAD_ID)
);
create sequence SEQ_TB_ASSAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_ASSAD to public;
grant index  on TB_ASSAD to public;
grant update on TB_ASSAD to public; 
grant delete on TB_ASSAD to public;  
grant insert on TB_ASSAD to public; 
grant select on SEQ_TB_ASSAD to public;   