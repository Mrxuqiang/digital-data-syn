/*
================================================================================
表结构代码:TB_PUBJM
表结构名称:费用项与公司代码关系定义2
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBJM;
drop index AK_TB_PUBJM;
drop table TB_PUBJM;
create table TB_PUBJM  (
   PUBJM_ID             INTEGER                         not null,	/*ID		*/
   PUBJM001             INTEGER                         not null,  	/*费用项ID	*/
   PUBJM002             INTEGER                         not null, 	/*商场ID	*/
   PUBJM003             INTEGER                         not null,  	/*楼栋ID	*/
   PUBJM004             INTEGER                         not null,  	/*楼层ID	*/
   PUBJM005             VARCHAR2(16)                    not null,       /*所属公司代码	*/                       
   PUBJM006             VARCHAR2(16)                    not null,       /*贸易伙伴代码	*/                      
   CREATE_USER          VARCHAR2(12),                             
   USER_GROUP           VARCHAR2(12),                                                            
   CREATE_DATE          DATE,                                    
   MODIFIER             VARCHAR2(12),                            
   MODI_DATE            DATE,                                    
   FLAG                 NUMBER,                                  
   constraint PK_TB_PUBJM primary key (PUBJM_ID)
);
create unique index AK_TB_PUBJM on TB_PUBJM (PUBJM001,PUBJM002,PUBJM003,PUBJM004,FLAG);
create sequence SEQ_TB_PUBJM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBJM to public;
grant index  on TB_PUBJM to public;
grant update on TB_PUBJM to public; 
grant delete on TB_PUBJM to public;  
grant insert on TB_PUBJM to public; 
grant select on SEQ_TB_PUBJM to public;   