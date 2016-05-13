/*
================================================================================
表结构代码:TB_CONBS
表结构名称:合同子品牌表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_CONBS;
drop index AK_TB_CONBS;
drop table TB_CONBS;
create table TB_CONBS  (
   CONBS_ID             INTEGER                         not null,  /*合同费用项目ID      */
   CONBS001             INTEGER                         not null,  /*合同ID              */
   CONBS002             INTEGER                         not null,  /*品牌ID              */
   CONBS003             INTEGER,                                   /*经营小类ID          */ 20120412 add by gaoxl for 11892  
   CONBS004             INTEGER,                                   /*场地ID              */ 20131202 add by ouwx  开窗选择，当前合同中的场地
   CONBS005             NUMBER(12,2),                               /*可租面积            */ 20131202 add by ouwx  手工输入，大于当前场地可租面积
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONBS primary key (CONBS_ID)
);
/*create unique index AK_TB_CONBS on TB_CONBS (CONBS001,CONBS002);*/
create unique index AK_TB_CONBS on TB_CONBS (CONBS001,CONBS002,CONBS003,FLAG);/*20120412 add by gaoxl for 11892  */
create sequence SEQ_TB_CONBS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBS to public;
grant index  on TB_CONBS to public;
grant update on TB_CONBS to public; 
grant delete on TB_CONBS to public;  
grant insert on TB_CONBS to public; 
grant select on SEQ_TB_CONBS to public;   