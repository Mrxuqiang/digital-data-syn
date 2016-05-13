/*
================================================================================
表结构代码:TB_PUBJL
表结构名称:费用项与公司代码关系定义1
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBJL;
drop index AK_TB_PUBJL;
drop table TB_PUBJL;
create table TB_PUBJL  (
   PUBJL_ID             INTEGER                         not null,	/*ID		*/
   PUBJL001             INTEGER                         not null,	/*费用项ID	*/  
   PUBJL002             INTEGER                         not null,	/*商场ID	*/   
   PUBJL003             INTEGER                         not null,	/*合同ID	*/    
   PUBJL004             INTEGER                         not null,	/*商户ID	*/    
   PUBJL005             VARCHAR2(16)                    not null,	/*所属公司代码	*/                                
   PUBJL006             VARCHAR2(16)                    not null,	/*贸易伙伴代码	*/                               
   CREATE_USER          VARCHAR2(12),                             
   USER_GROUP           VARCHAR2(12),                                                            
   CREATE_DATE          DATE,                                    
   MODIFIER             VARCHAR2(12),                            
   MODI_DATE            DATE,                                    
   FLAG                 NUMBER,                                  
   constraint PK_TB_PUBJL primary key (PUBJL_ID)
);
create unique index AK_TB_PUBJL on TB_PUBJL (PUBJL001,PUBJL002,PUBJL003,PUBJL004,FLAG);
create sequence SEQ_TB_PUBJL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJL to public;
grant index  on TB_PUBJL to public;
grant update on TB_PUBJL to public; 
grant delete on TB_PUBJL to public;  
grant insert on TB_PUBJL to public; 
grant select on SEQ_TB_PUBJL to public;   