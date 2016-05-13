/*
20140815 add by gaoxl for 商户欠费表
*/
/*
================================================================================
表结构代码:TB_PUBGK
表结构名称:费用明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGK;
drop index AK_TB_PUBGK;
drop table TB_PUBGK;
create table TB_PUBGK  (
   PUBGK_ID             INTEGER                         not null,  /*费用明细ID         */
   PUBGK001             VARCHAR2(8)                     not null,  /*费用代码           */
   PUBGK002             VARCHAR2(30)                    not null,  /*费用名称           */
   PUBGK003             INTEGER                         not null,  /*费用分类ID         */
   PUBGK004             INTEGER,                                   /*会计科目ID         */
   PUBGK005             VARCHAR2(1)                     not null,  /*帐款类型           */
   PUBGK006             VARCHAR2(1)                     not null,  /*权益类型           */
   PUBGK007             INTEGER,                                   /*收款银行异动码ID   */
   PUBGK008             INTEGER,                                   /*退款银行异动码ID   */
   PUBGK009             VARCHAR2(1),                               /*是否开发票         */
   PUBGK010             VARCHAR2(2)                     not null,  /*费用类型           */
   PUBGK011             VARCHAR2(1)                     not null,  /*审核立应收         */  
   PUBGK012             VARCHAR2(1)                     not null,  /*是否固定账扣       */    
   PUBGK013             INTEGER,                                   /*应收单别           */ add by ouwx 2012/02/21
   PUBGK014             VARCHAR(2),                                /*抵扣顺序           */ 20130125 add by shizhan
   PUBGK015             VARCHAR(2),                                /*欠费表项目         */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */ 
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER,                                 /*资料状态           */
   constraint PK_TB_PUBGK primary key (PUBGK_ID)
);
create unique index AK_TB_PUBGK on TB_PUBGK (PUBGK001);
create sequence SEQ_TB_PUBGK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGK to public;
grant index  on TB_PUBGK to public;
grant update on TB_PUBGK to public; 
grant delete on TB_PUBGK to public;  
grant insert on TB_PUBGK to public; 
grant select on SEQ_TB_PUBGK to public;   