/*
================================================================================
表结构代码:TB_PROEC
表结构名称:值班记录单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROEC;
drop index AK_TB_PROEC;
drop table TB_PROEC;
create table TB_PROEC  (
   PROEC_ID             INTEGER                         not null,  /*值班记录单ID	 */
   PROEC001             INTEGER                         not null,  /*单别		 */
   PROEC002             VARCHAR2(30)                    not null,  /*值班单号		 */
   PROEC003             DATE                            not null,  /*值班日期		 */
   PROEC004             INTEGER                         not null,  /*营运组织ID		 */
   PROEC005             INTEGER                         not null,  /*值班部门ID		 */
   PROEC006             INTEGER                         not null,  /*值班人员ID		 */
   PROEC007             INTEGER,				   /*岗位ID		 */
   PROEC008             INTEGER,				   /*事件类型ID		 */
   PROEC009             VARHCAR2(30),				   /*事主姓名 		 */
   PROEC010             VARCHAR2(30),				   /*联系电话		 */
   PROEC011             VARCHAR2(1),				   /*性别		 */
   PROEC012             INTEGER,				   /*年龄ID		 */
   PROEC013             VARCHAR2(100),				   /*联系地址		 */
   PROEC014             VARCHAR2(100),				   /*发生地点		 */
   PROEC015             DATE,					   /*发生时间		 */
   PROEC016             VARCHAR2(255),				   /*事件记录		 */
   PROEC017             VARCHAR2(255),				   /*处理结果		 */
   PROEC018             VARCHAR2(255),                             /*备注                */
   PROEC019             INTEGER,                                   /*录入人ID            */
   PROEC020             DATE,                                      /*录入日期            */
   PROEC031             INTEGER,                                   /*审核人ID            */
   PROEC032             DATE,                                      /*审核日期            */
   PROEC033             VARCHAR2(1)                     not null,  /*审核状态            */
   PROEC034             VARCHAR2(1),                               /*是否签核            */
   PROEC035             VARCHAR2(30),                              /*签核单号            */
   PROEC036             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PROEC primary key (PROEC_ID)
);
create unique index AK_TB_PROEC on TB_PROEC (PROEC002,PROEC004);
create sequence SEQ_TB_PROEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROEC to public;
grant index  on TB_PROEC to public;
grant update on TB_PROEC to public; 
grant delete on TB_PROEC to public;  
grant insert on TB_PROEC to public; 
grant select on SEQ_TB_PROEC to public;   

