/*
================================================================================
表结构代码:TB_BILMA
表结构名称:促销费用分摊单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILMA;
drop index AK_TB_BILMA;
drop table TB_BILMA;
create table TB_BILMA  (
   BILMA_ID             INTEGER                         not null,  /*促销费用分摊单ID     */
   BILMA001             INTEGER                         not null,  /*单别ID               */
   BILMA002             VARCHAR2(30)                    not null,  /*分摊单号             */
   BILMA003             DATE                            not null,  /*分摊日期             */
   BILMA004             INTEGER                         not null,  /*营运组织ID           */
   BILMA005             INTEGER                         not null,  /*业务部门ID           */
   BILMA006             INTEGER                         not null,  /*业务人员ID           */
   BILMA007             INTEGER                         not null,  /*促销主题ID           */
   BILMA008             DATE                            not null,  /*促销开始日期         */
   BILMA009             DATE                            not null,  /*促销结束日期         */
   BILMA010             VARCHAR2(255),                             /*备注                 */
   BILMA011             INTEGER,                                   /*录入人ID             */
   BILMA012             DATE,                                      /*录入日期             */
   BILMA013             INTEGER,                                   /*审核人ID             */
   BILMA014             DATE,                                      /*审核日期             */
   BILMA015             VARCHAR2(1)                     not null,  /*审核状态             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILMA primary key (BILMA_ID)
);
create unique index AK_TB_BILMA on TB_BILMA (BILMA001,BILMA002,BILMA004,flag);
create sequence SEQ_TB_BILMA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILMA to public;
grant index  on TB_BILMA to public;
grant update on TB_BILMA to public; 
grant delete on TB_BILMA to public;  
grant insert on TB_BILMA to public; 
grant select on SEQ_TB_BILMA to public;   