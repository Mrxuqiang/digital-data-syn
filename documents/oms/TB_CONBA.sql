/*
================================================================================
表结构代码:TB_CONBA
表结构名称:合同优惠单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBA;
drop index AK_TB_CONBA;
drop table TB_CONBA;
create table TB_CONBA  (
   CONBA_ID             INTEGER                         not null,  /*合同优惠单ID        */
   CONBA001             INTEGER                         not null,  /*单别ID              */
   CONBA002             VARCHAR2(30)                    not null,  /*优惠单号            */
   CONBA003             DATE                            not null,  /*单据日期            */
   CONBA004             VARCHAR2(255)                           ,  /*优惠描述            */
   CONBA005             INTEGER,                                   /*营运组织ID          */ 
   CONBA006             INTEGER,                                   /*录入人ID            */
   CONBA007             DATE,                                      /*录入日期            */
   CONBA008             INTEGER,                                   /*审核人ID            */
   CONBA009             DATE,                                      /*审核日期            */
   CONBA010             VARCHAR2(1)                     not null,  /*审核状态            */
   CONBA011             VARCHAR2(1),                               /*是否签核            */
   CONBA012             VARCHAR2(30),                              /*签核单号            */
   CONBA013             VARCHAR2(1),                               /*签核码        1审批中、2已审批、3驳回      */  
   CONBA014             DATE                            not null,  /*合同开始日          */
   CONBA015             DATE                            not null,  /*合同结束日          */
   CONBA016             NUMBER(14,2)                    not null,  /*本年度预算总额      */
   CONBA017             NUMBER(14,2)                    not null,  /*全年展望租金实现额  */
   CONBA018             NUMBER(14,2)                    not null,  /*全年展望与预算差异  */
   CONBA019             NUMBER(14,2)                    not null,  /*本年度审批优惠总额  */
   CONBA020             NUMBER(14,2)                    not null,  /*全年度已用优惠总额  */
   CONBA021             NUMBER(14,2)                    not null,  /*全年度审批中优惠总额*/
   CONBA022             NUMBER(14,2)                    not null,  /*本年度剩余优惠总额  */
   CONBA023             VARCHAR2(255)                           ,  /*优惠原因ID     其他     */
   CONBA024             VARCHAR2(1)                             ,  /*优惠方式       1.单价 2.期间 3.其他    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                             
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CONBA primary key (CONBA_ID)
);
create unique index AK_TB_CONBA on TB_CONBA (CONBA002);
create sequence SEQ_TB_CONBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBA to public;
grant index  on TB_CONBA to public;
grant update on TB_CONBA to public; 
grant delete on TB_CONBA to public;  
grant insert on TB_CONBA to public; 
grant select on SEQ_TB_CONBA to public;   