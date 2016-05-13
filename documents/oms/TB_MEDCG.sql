/*
================================================================================
表结构代码:TB_MEDCG
表结构名称:媒体合同分摊单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDCG;
drop index AK_TB_MEDCG;
drop table TB_MEDCG;
create table TB_MEDCG  (
   MEDCG_ID             INTEGER                         not null,  /*媒体合同分摊明细ID  */
   MEDCG001             INTEGER                         not null,  /*媒体合同分摊单ID    */
   MEDCG002             INTEGER                         not null,  /*租赁合同ID          */
   MEDCG003             VARCHAR2(1)                     not null,  /*分摊方式 1.按媒体合同金额比率   2.按媒体请款金额比率  3.按固定金额  */
   MEDCG004             NUMBER(12,2)                    not null,  /*金额或比率%         */
   MEDCG005             NUMBER(12,2)                    not null,  /*分摊金额            */
   MEDCG006             VARCHAR2(60),				   /*说明                */
   MEDCG007             INTEGER,				   /*费用单号ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEDCG primary key (MEDCG_ID)
);
create unique index AK_TB_MEDCG on TB_MEDCG (MEDCG001,MEDCG002);
create sequence SEQ_TB_MEDCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDCG to public;
grant index  on TB_MEDCG to public;
grant update on TB_MEDCG to public; 
grant delete on TB_MEDCG to public;  
grant insert on TB_MEDCG to public; 
grant select on SEQ_TB_MEDCG to public;   